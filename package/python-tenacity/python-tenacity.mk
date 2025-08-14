################################################################################
#
# python-tenacity
#
################################################################################

PYTHON_TENACITY_VERSION = 9.1.2
PYTHON_TENACITY_SOURCE = tenacity-$(PYTHON_TENACITY_VERSION).tar.gz
PYTHON_TENACITY_SITE = https://files.pythonhosted.org/packages/0a/d4/2b0cd0fe285e14b36db076e78c93766ff1d529d70408bd1d2a5a84f1d929
PYTHON_TENACITY_SETUP_TYPE = setuptools
PYTHON_TENACITY_DEPENDENCIES = host-python-setuptools-scm
PYTHON_TENACITY_LICENSE = Apache-2.0
PYTHON_TENACITY_LICENSE_FILES = LICENSE

$(eval $(python-package))
