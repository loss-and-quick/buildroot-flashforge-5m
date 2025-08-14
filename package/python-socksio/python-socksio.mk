################################################################################
#
# python-socksio
#
################################################################################

PYTHON_SOCKSIO_VERSION = 1.0.0
PYTHON_SOCKSIO_SOURCE = socksio-$(PYTHON_SOCKSIO_VERSION).tar.gz
PYTHON_SOCKSIO_SITE = https://files.pythonhosted.org/packages/f8/5c/48a7d9495be3d1c651198fd99dbb6ce190e2274d0f28b9051307bdec6b85
PYTHON_SOCKSIO_SETUP_TYPE = flit
PYTHON_SOCKSIO_LICENSE = MIT
PYTHON_SOCKSIO_LICENSE_FILES = LICENSE

$(eval $(python-package))
