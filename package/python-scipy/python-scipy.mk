################################################################################
#
# python-scipy
#
################################################################################

PYTHON_SCIPY_VERSION = 1.13.1
PYTHON_SCIPY_SOURCE = scipy-$(PYTHON_SCIPY_VERSION).tar.gz
PYTHON_SCIPY_SITE = https://files.pythonhosted.org/packages/ae/00/48c2f661e2816ccf2ecd77982f6605b2950afe60f60a52b4cbbc2504aa8f
PYTHON_SCIPY_LICENSE = \
	BSD-3-Clause, \
	BSD-2-Clause, \
	BSD, \
	BSD-Style, \
	MIT, \
	Qhull
PYTHON_SCIPY_LICENSE_FILES = \
	LICENSE.txt \
	scipy/ndimage/LICENSE.txt \
	scipy/optimize/tnc/LICENSE \
	scipy/sparse/linalg/_dsolve/SuperLU/License.txt \
	scipy/sparse/linalg/_eigen/arpack/ARPACK/COPYING \
	scipy/spatial/qhull_src/COPYING.txt
PYTHON_SCIPY_CPE_ID_VENDOR = scipy
PYTHON_SCIPY_CPE_ID_PRODUCT = scipy
PYTHON_SCIPY_DEPENDENCIES += \
	host-python-cython \
	host-python-numpy \
	host-python-pythran \
	zlib \
	lapack \
	openblas \
	python3 \
	python-numpy \
	python-pybind
PYTHON_SCIPY_INSTALL_STAGING = YES

PYTHON_SCIPY_CONF_ENV += \
	_PYTHON_SYSCONFIGDATA_NAME=$(PKG_PYTHON_SYSCONFIGDATA_NAME) \
	PYTHONPATH=$(PYTHON3_PATH)

PYTHON_SCIPY_CONF_OPTS = -Dblas=openblas -Dlapack=lapack

PYTHON_SCIPY_MESON_EXTRA_PROPERTIES = \
	numpy-include-dir='$(STAGING_DIR)/usr/lib/python$(PYTHON3_VERSION_MAJOR)/site-packages/numpy/core/include'

$(eval $(meson-package))
