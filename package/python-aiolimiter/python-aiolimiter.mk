################################################################################
#
# python-aiolimiter
#
################################################################################

PYTHON_AIOLIMITER_VERSION = 1.2.1
PYTHON_AIOLIMITER_SOURCE = aiolimiter-$(PYTHON_AIOLIMITER_VERSION).tar.gz
PYTHON_AIOLIMITER_SITE = https://files.pythonhosted.org/packages/f1/23/b52debf471f7a1e42e362d959a3982bdcb4fe13a5d46e63d28868807a79c
PYTHON_AIOLIMITER_SETUP_TYPE = poetry
PYTHON_AIOLIMITER_LICENSE = MIT
PYTHON_AIOLIMITER_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
