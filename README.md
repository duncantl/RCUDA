
If you are installing the package from a .tar.gz file, that archive
contains all the necessary files. However, if you are working directly
from the git repository, some of the necessary files are in other
repositories and we need to create symbolic links to those files
within this.  This only needs to do once.

To work with the git repository, you will need to create symbolic
links to RConverters.c and RConverters.h from the RAutoGenRunTime
package or repository.  You might do something like

```shell
git clone https://github.com/duncantl/RCUDA
git clone https://github.com/omegahat/RAutoGenRunTime

cd RCUDA/src
ln -s ../../RAutoGenRunTime/src/RConverters.c .
ln -s ../../RAutoGenRunTime/inst/include/RConverters.h .
ln -s ../../RAutoGenRunTime/inst/include/RError.h .
```
