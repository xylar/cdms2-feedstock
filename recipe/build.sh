export CFLAGS="-Wall -g -m64 -pipe -O2  -fPIC"
export CXXLAGS="${CFLAGS}"
export CPPFLAGS="-I${PREFIX}/include"
export LDFLAGS="-L${PREFIX}/lib"
export UVCDAT_ANONYMOUS_LOG=False

if [ `uname` == Linux ]; then
    # To make sure we get the correct g++
    # export LD_LIBRARY_PATH=${PREFIX}/lib:${LIBRARY_PATH}
    LDSHARED="$CC -shared -pthread" python setup.py install
else
    python setup.py install
fi

