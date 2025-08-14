################################################################################
#
# python-emoji
#
################################################################################

PYTHON_EMOJI_VERSION = 2.14.1
PYTHON_EMOJI_SOURCE = emoji-$(PYTHON_EMOJI_VERSION).tar.gz
PYTHON_EMOJI_SITE = https://files.pythonhosted.org/packages/cb/7d/01cddcbb6f5cc0ba72e00ddf9b1fa206c802d557fd0a20b18e130edf1336
PYTHON_EMOJI_SETUP_TYPE = setuptools
PYTHON_EMOJI_LICENSE = BSD-3-Clause
PYTHON_EMOJI_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
