from setuptools import setup
from distutils.core import Extension
from Cython.Distutils import build_ext
import numpy

setup(
    cmdclass={'build_ext': build_ext},
    ext_modules=[Extension("bext_cython",
                           sources=["csrc/bext.pyx", "csrc/main.c"],
                           language='c',
                           include_dirs=[numpy.get_include()],
                           extra_compile_args=["-Wall"])]
)
