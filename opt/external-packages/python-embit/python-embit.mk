################################################################################
#
# python-embit
#
################################################################################

# The unified opt-in signature hash lives in embit, so this points at the fork carrying it rather than
# the release on PyPI. Redirecting the app repo alone is not enough: build.sh deletes the app's
# requirements.txt and embit is installed from this package, so an image built without this change
# ships stock embit and signs the legacy way without reporting anything.
PYTHON_EMBIT_VERSION = 0.8.0-unified-sighash.3
PYTHON_EMBIT_SOURCE = embit-$(PYTHON_EMBIT_VERSION).tar.gz
PYTHON_EMBIT_SITE = https://github.com/privkeyio/embit/releases/download/v$(PYTHON_EMBIT_VERSION)
PYTHON_EMBIT_LICENSE = MIT
PYTHON_EMBIT_SETUP_TYPE = setuptools

$(eval $(python-package))
