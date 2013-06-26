#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <cuda.h>
#include <curand_kernel.h>

// Random Gamma variates in CUDA...
// Surprisingly, there doesn't seem to be any standard way to 
// generate these from the SDK. This is the CUDA port of the 
// rgamma code as used by R.

extern "C"
{

// __constants__ for speed:
/*
__const__ float sqrt32 = 5.656854;
__const__ float exp_m1 = 0.36787944117144232159;
__const__ float q1 = 0.04166669;
__const__ float q2 = 0.02083148;
__const__ float q3 = 0.00801191;
__const__ float q4 = 0.00144121;
__const__ float q5 = -7.388e-5;
__const__ float q6 = 2.4511e-4;
__const__ float q7 = 2.424e-4;
__const__ float a1 = 0.3333333;
__const__ float a2 = -0.250003;
__const__ float a3 = 0.2000062;
__const__ float a4 = -0.1662921;
__const__ float a5 = 0.1423657;
__const__ float a6 = -0.1367177;
__const__ float a7 = 0.1233795;


*/

__global__ void setup_kernel(curandState  *state, int *seeds, int n)
{
    // Usual block/thread indexing...
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
    int idx = myblock * blocksize + subthread;
    if (idx < n){
        curand_init(seeds[idx], idx, 0, &state[idx]);
    }
    return;
}

__global__ void rgamma_kernel(curandState *state, float *vals, int n, float a, float scale)
{
    float sqrt32 = 5.656854;
    float exp_m1 = 0.36787944117144232159;
    float q1 = 0.04166669;
    float q2 = 0.02083148;
    float q3 = 0.00801191;
    float q4 = 0.00144121;
    float q5 = -7.388e-5;
    float q6 = 2.4511e-4;
    float q7 = 2.424e-4;
    float a1 = 0.3333333;
    float a2 = -0.250003;
    float a3 = 0.2000062;
    float a4 = -0.1662921;
    float a5 = 0.1423657;
    float a6 = -0.1367177;
    float a7 = 0.1233795;

    // Usual block/thread indexing...
    int myblock = blockIdx.x + blockIdx.y * gridDim.x;
    int blocksize = blockDim.x * blockDim.y * blockDim.z;
    int subthread = threadIdx.z*(blockDim.x * blockDim.y) + threadIdx.y*blockDim.x + threadIdx.x;
    int idx = myblock * blocksize + subthread;

	if (idx >= n) {
	    return;
	}

    // State variables:
    float aa = 0.;
    float aaa = 0.;
    float s, s2, d;    
    float q0, b, si, c;
    float e, p, q, r, t, u, v, w, x, ret_val;

    // Note: Error checks on arguments removed!
    if (a < 1.0) { // GS algorithm for parameters a < 1
        if (a == 0){
            vals[idx] = 0.0;
	        return;
        }
        e = 1.0 + exp_m1 * a;
        while (1){
            p = e * curand_normal(&state[idx]);
            if (p >= 1.0) {
                x = -logf((e - p)/a);
                if (logf(curand_uniform(&state[idx])) <= (1.0 - a) * logf(x)){
                    break;
                }
            } else {
                x = expf(logf(p) / a);
                if (logf(curand_uniform(&state[idx])) <= x){
                    break;
                }
            }
        }
        vals[idx] = scale * x;
        return;
    }

    // --- a >= 1 : GD algorithm --- 

    // Step 1: Recalculations of s2, s, d if a has changed 
    if (a != aa) {
        aa = a;
        s2 = a - 0.5;
        s = sqrtf(s2);
        d = sqrt32 - s * 12.0;
    }

    // Step 2: t = standard normal deviate,
    //           x = (s,1/2) -normal deviate. 

    //printf("Step 2...\n");

    // immediate acceptance (i)
    t = curand_normal(&state[idx]);
    x = s + 0.5 * t;
    ret_val = x * x;
    if (t >= 0.0){
        vals[idx] = scale * ret_val;
        return;
    }

    //printf("Step 3...\n");

    // Step 3: u = 0,1 - uniform sample. squeeze acceptance (s)
    u = curand_uniform(&state[idx]);
    if ((d*u) <= (t*t*t)){
	    vals[idx] = scale * ret_val;
        return;
    }

    //printf("Step 4...\n");

    // Step 4: recalculations of q0, b, si, c if necessary
    if (a != aaa){
        aaa = a;
        r = 1.0 / a;
        q0 = ((((((q7 * r + q6) * r + q5) * r + q4) * r + q3) * r 
                    + q2) * r + q1) * r;

        // Approximation depending on size of parameter a 
	    // The constants in the expressions for b, si and c 
	    // were established by numerical experiments 

	    if (a <= 3.686) {
	        b = 0.463 + s + 0.178 * s2;
	        si = 1.235;
	        c = 0.195 / s - 0.079 + 0.16 * s;
	    } else if (a <= 13.022) {
	        b = 1.654 + 0.0076 * s2;
	        si = 1.68 / s + 0.275;
	        c = 0.062 / s + 0.024;
	    } else {
	        b = 1.77;
	        si = 0.75;
	        c = 0.1515 / s;
	    }

    }

    //printf("Step 5...\n");

    // Step 5: no quotient test if x not positive 
    if (x > 0.0) {
    	
        // Step 6: calculation of v and quotient q 
	    v = t / (s + s);
	    if (fabs(v) <= 0.25){
	        q = q0 + 0.5 * t * t * ((((((a7 * v + a6) * v + a5) * v + a4) * v
				      + a3) * v + a2) * v + a1) * v;
	    } else {
	        q = q0 - s * t + 0.25 * t * t + (s2 + s2) * log(1.0 + v);
        }

	    // Step 7: quotient acceptance (q) 
	    if (logf(1.0 - u) <= q){
	        vals[idx] = scale * ret_val;
            return;
        }

    }

    //printf("Step 8...\n");

    while (1){

	    // Step 8: e = standard exponential deviate
	    //	u =  0,1 -uniform deviate
	    //	t = (b,si)-double exponential (laplace) sample
	    e = -logf(curand_uniform(&state[idx])); // Expo(1)
	    u = curand_uniform(&state[idx]);
    	u = u + u - 1.0;
	    if (u < 0.0){
	        t = b - si * e;
        } else {
	        t = b + si * e;
        }
    	// Step	 9:  rejection if t < tau(1) = -0.71874483771719
	    if (t >= -0.71874483771719) {
	        // Step 10:	 calculation of v and quotient q 
    	    v = t / (s + s);
	        if (fabs(v) <= 0.25){
		        q = q0 + 0.5 * t * t *
		            ((((((a7 * v + a6) * v + a5) * v + a4) * v + a3) * v
		            + a2) * v + a1) * v;
            } else {
		        q = q0 - s * t + 0.25 * t * t + (s2 + s2) * log(1.0 + v);
            }
	        // Step 11:	 hat acceptance (h) 
	        // (if q not positive go to step 8) 
	        if (q > 0.0) {
		        w = expm1f(q); // expm1 is double prec...
		        //  ^^^^^ original code had approximation with rel.err < 2e-7 
		        // if t is rejected sample again at step 8 
		        if (c * fabs(u) <= w * expf(e - 0.5 * t * t)){
		            break;
                }
	        }
	    }

    } // repeat .. until  `t' is accepted 

    //printf("Returning at end...\n");

    x = s + 0.5 * t;
    vals[idx] = scale * x * x;
    return;
}

}


/*
   // R CODE from rgamma.c

#include "nmath.h"

#define repeat for(;;)

double rgamma(double a, double scale)
{
    // Constants:
    const static double sqrt32 = 5.656854;
    const static double exp_m1 = 0.36787944117144232159; // exp(-1) = 1/e 

    // Coefficients q[k] - for q0 = sum(q[k]*a^(-k))
    // Coefficients a[k] - for q = q0+(t*t/2)*sum(a[k]*v^k)
    // Coefficients e[k] - for exp(q)-1 = sum(e[k]*q^k)
    
    const static double q1 = 0.04166669;
    const static double q2 = 0.02083148;
    const static double q3 = 0.00801191;
    const static double q4 = 0.00144121;
    const static double q5 = -7.388e-5;
    const static double q6 = 2.4511e-4;
    const static double q7 = 2.424e-4;

    const static double a1 = 0.3333333;
    const static double a2 = -0.250003;
    const static double a3 = 0.2000062;
    const static double a4 = -0.1662921;
    const static double a5 = 0.1423657;
    const static double a6 = -0.1367177;
    const static double a7 = 0.1233795;

    // State variables [FIXME for threading!] :
    static double aa = 0.;
    static double aaa = 0.;
    static double s, s2, d;    // no. 1 (step 1)
    static double q0, b, si, c;// no. 2 (step 4)

    double e, p, q, r, t, u, v, w, x, ret_val;

    if (!R_FINITE(a) || !R_FINITE(scale) || a < 0.0 || scale <= 0.0) {
	if(scale == 0.) return 0.;
	ML_ERR_return_NAN;
    }

    if (a < 1.) { // GS algorithm for parameters a < 1
	if(a == 0)
	    return 0.;
	e = 1.0 + exp_m1 * a;
	repeat {
	    p = e * unif_rand();
	    if (p >= 1.0) {
		x = -log((e - p) / a);
		if (exp_rand() >= (1.0 - a) * log(x))
		    break;
	    } else {
		x = exp(log(p) / a);
		if (exp_rand() >= x)
		    break;
	    }
	}
	return scale * x;
    }

    // --- a >= 1 : GD algorithm --- 

    // Step 1: Recalculations of s2, s, d if a has changed 
    if (a != aa) {
	aa = a;
	s2 = a - 0.5;
	s = sqrt(s2);
	d = sqrt32 - s * 12.0;
    }
    // Step 2: t = standard normal deviate,
    //           x = (s,1/2) -normal deviate. 

    // immediate acceptance (i)
    t = norm_rand();
    x = s + 0.5 * t;
    ret_val = x * x;
    if (t >= 0.0)
	return scale * ret_val;

    // Step 3: u = 0,1 - uniform sample. squeeze acceptance (s)
    u = unif_rand();
    if (d * u <= t * t * t)
	return scale * ret_val;

    // Step 4: recalculations of q0, b, si, c if necessary

    if (a != aaa) {
	aaa = a;
	r = 1.0 / a;
	q0 = ((((((q7 * r + q6) * r + q5) * r + q4) * r + q3) * r
	       + q2) * r + q1) * r;

	// Approximation depending on size of parameter a 
	// The constants in the expressions for b, si and c 
	// were established by numerical experiments 

	if (a <= 3.686) {
	    b = 0.463 + s + 0.178 * s2;
	    si = 1.235;
	    c = 0.195 / s - 0.079 + 0.16 * s;
	} else if (a <= 13.022) {
	    b = 1.654 + 0.0076 * s2;
	    si = 1.68 / s + 0.275;
	    c = 0.062 / s + 0.024;
	} else {
	    b = 1.77;
	    si = 0.75;
	    c = 0.1515 / s;
	}
    }
    // Step 5: no quotient test if x not positive 

    if (x > 0.0) {
	// Step 6: calculation of v and quotient q 
	v = t / (s + s);
	if (fabs(v) <= 0.25)
	    q = q0 + 0.5 * t * t * ((((((a7 * v + a6) * v + a5) * v + a4) * v
				      + a3) * v + a2) * v + a1) * v;
	else
	    q = q0 - s * t + 0.25 * t * t + (s2 + s2) * log(1.0 + v);


	// Step 7: quotient acceptance (q) 
	if (log(1.0 - u) <= q)
	    return scale * ret_val;
    }

    repeat {
	// Step 8: e = standard exponential deviate
	//	u =  0,1 -uniform deviate
	//	t = (b,si)-double exponential (laplace) sample
	e = exp_rand();
	u = unif_rand();
	u = u + u - 1.0;
	if (u < 0.0)
	    t = b - si * e;
	else
	    t = b + si * e;
	// Step	 9:  rejection if t < tau(1) = -0.71874483771719
	if (t >= -0.71874483771719) {
	    // Step 10:	 calculation of v and quotient q 
	    v = t / (s + s);
	    if (fabs(v) <= 0.25)
		q = q0 + 0.5 * t * t *
		    ((((((a7 * v + a6) * v + a5) * v + a4) * v + a3) * v
		      + a2) * v + a1) * v;
	    else
		q = q0 - s * t + 0.25 * t * t + (s2 + s2) * log(1.0 + v);
	    // Step 11:	 hat acceptance (h) 
	    // (if q not positive go to step 8) 
	    if (q > 0.0) {
		w = expm1(q);
		//  ^^^^^ original code had approximation with rel.err < 2e-7 
		// if t is rejected sample again at step 8 
		if (c * fabs(u) <= w * exp(e - 0.5 * t * t))
		    break;
	    }
	}
    } // repeat .. until  `t' is accepted 
    x = s + 0.5 * t;
    return scale * x * x;
}

*/

