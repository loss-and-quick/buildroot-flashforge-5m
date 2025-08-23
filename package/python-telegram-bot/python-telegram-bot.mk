################################################################################
#
# python-telegram-bot
#
################################################################################

PYTHON_TELEGRAM_BOT_VERSION = 22.2
PYTHON_TELEGRAM_BOT_SOURCE = python_telegram_bot-$(PYTHON_TELEGRAM_BOT_VERSION).tar.gz
PYTHON_TELEGRAM_BOT_SITE = https://files.pythonhosted.org/packages/52/a5/59e8d771e332105b7acbd48ff7b7f0415f9d50c32bac46963f487cc6cf94
PYTHON_TELEGRAM_BOT_SETUP_TYPE = hatch
PYTHON_TELEGRAM_BOT_LICENSE = CC0-1.0, GPL-3.0
PYTHON_TELEGRAM_BOT_LICENSE_FILES = LICENSE examples/LICENSE.txt

$(eval $(python-package))
