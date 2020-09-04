
cimport cython
cimport numpy as np
cimport cython



# cdefine the signature of our c function
cdef extern from "main.h":
    int  _sum(int a, int b)
    void _sum_vec(float* in1, float* in2, float* out, int n)


def sum(int a, int b):
    return _sum(a, b)

def sum_vec(np.ndarray[float, ndim=2, mode="c"] a not None,
            np.ndarray[float, ndim=2, mode="c"] b not None,
            np.ndarray[float, ndim=2, mode="c"] out not None, int n):
    return _sum_vec(<float*> np.PyArray_DATA(a),
                    <float*> np.PyArray_DATA(b),
                    <float*> np.PyArray_DATA(out),
                    n)
