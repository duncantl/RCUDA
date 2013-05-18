void foo()
{
    char *p;
    const char *cp;
    char * const cp1;

    cp = p;
    cp1 = p;
    cp[0] = p;
    cp1[0] = p;
}

void foo1(    char *p,  const char *cp,  char * const cp1)
{

}
