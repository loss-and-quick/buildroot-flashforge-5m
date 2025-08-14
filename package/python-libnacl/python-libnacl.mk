################################################################################
#
# python-libnacl
#
################################################################################

PYTHON_LIBNACL_VERSION = 2.1.0
PYTHON_LIBNACL_SOURCE = libnacl-$(PYTHON_LIBNACL_VERSION).tar.gz
PYTHON_LIBNACL_SITE = https://files.pythonhosted.org/packages/source/l/libnacl
PYTHON_LIBNACL_SETUP_TYPE = poetry
PYTHON_LIBNACL_LICENSE = Apache-2.0
PYTHON_LIBNACL_LICENSE_FILES = LICENSE
PYTHON_LIBNACL_DEPENDENCIES = libsodium

$(eval $(python-package))