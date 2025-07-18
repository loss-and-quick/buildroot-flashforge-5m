################################################################################
#
# python-gobject
#
################################################################################

PYTHON_GOBJECT_VERSION_MAJOR = 3.50
PYTHON_GOBJECT_VERSION = $(PYTHON_GOBJECT_VERSION_MAJOR).0
PYTHON_GOBJECT_SOURCE = pygobject-$(PYTHON_GOBJECT_VERSION).tar.xz
PYTHON_GOBJECT_SITE = https://download.gnome.org/sources/pygobject/$(PYTHON_GOBJECT_VERSION_MAJOR)
PYTHON_GOBJECT_LICENSE = LGPL-2.1+
PYTHON_GOBJECT_LICENSE_FILES = COPYING
PYTHON_GOBJECT_INSTALL_STAGING = YES
PYTHON_GOBJECT_DEPENDENCIES = \
	gobject-introspection \
	host-pkgconf \
	libglib2 \
	python3

PYTHON_GOBJECT_CONF_OPTS += -Dtests=false

ifeq ($(BR2_PACKAGE_CAIRO),y)
PYTHON_GOBJECT_CONF_OPTS += -Dpycairo=enabled
PYTHON_GOBJECT_DEPENDENCIES += python-pycairo
else
PYTHON_GOBJECT_CONF_OPTS += -Dpycairo=disabled
endif

# A sysconfigdata_name must be manually specified or the resulting .so
# will have a x86_64 prefix, which causes "import gi" to fail.
# A pythonpath must be specified or the host python path will be used resulting
# in a "not a valid python" error.
PYTHON_GOBJECT_CONF_ENV += \
	_PYTHON_SYSCONFIGDATA_NAME=$(PKG_PYTHON_SYSCONFIGDATA_NAME) \
	PYTHONPATH=$(PYTHON3_PATH)

$(eval $(meson-package))
