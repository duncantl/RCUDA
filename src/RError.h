#ifndef RERROR_H
#define RERROR_H

#include <Rinternals.h>

void raiseError(const char *msg, const char *errorClass);
void  raiseErrorWithValues(const char *errorClass, const char *msg, ...);

/* Add additiona error handlers which  take objects */
#define R_ERROR(className) \
        ),raiseError(className, R_problem_buf);}

#define R_ERROR_OBJS(className)			\
        ),raiseErrorWithValues(className, R_problem_buf,

#define R_ERROR_OBJS_TERM  , NULL);}


#endif /* end of re-inclusion guard */
