cd galen-api-ports
./distribute_galenpy.sh -no-upload
export GALENPY_VERSION=$(python -c 'import py; print py.__version__')
pip install dist/galenpy-${GALENPY_VERSION}-py2.py3-none-any.whl

cd ..
git clone git@github.com:valermor/galen-sample-py-tests.git
cd galen-sample-py-tests
./scripts/install_requirements.sh
./run_webdriver_tests.sh
