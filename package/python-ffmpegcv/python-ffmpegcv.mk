################################################################################
#
# python-ffmpegcv
#
################################################################################

PYTHON_FFMPEGCV_VERSION = 0.3.18
PYTHON_FFMPEGCV_SOURCE = ffmpegcv-$(PYTHON_FFMPEGCV_VERSION).tar.gz
PYTHON_FFMPEGCV_SITE = https://files.pythonhosted.org/packages/42/a4/fd0f0f5bb3d9c82f2bff0a65681a41be69e7c78570754950454226ee6b43
PYTHON_FFMPEGCV_SETUP_TYPE = setuptools
PYTHON_FFMPEGCV_LICENSE = UNKNOWN
PYTHON_FFMPEGCV_LICENSE_FILES = 
PYTHON_FFMPEGCV_DEPENDENCIES = \
	ffmpeg \
	python-numpy

$(eval $(python-package))
