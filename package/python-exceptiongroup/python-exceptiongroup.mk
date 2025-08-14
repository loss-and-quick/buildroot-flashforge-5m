################################################################################
#
# python-exceptiongroup
#
################################################################################

PYTHON_EXCEPTIONGROUP_VERSION = 1.3.0
PYTHON_EXCEPTIONGROUP_SOURCE = exceptiongroup-$(PYTHON_EXCEPTIONGROUP_VERSION).tar.gz
PYTHON_EXCEPTIONGROUP_SITE = https://files.pythonhosted.org/packages/0b/9f/a65090624ecf468cdca03533906e7c69ed7588582240cfe7cc9e770b50eb
PYTHON_EXCEPTIONGROUP_SETUP_TYPE = flit
PYTHON_EXCEPTIONGROUP_DEPENDENCIES = host-python-flit-scm
PYTHON_EXCEPTIONGROUP_LICENSE = MIT
PYTHON_EXCEPTIONGROUP_LICENSE_FILES = LICENSE

$(eval $(python-package))
