cd galen-api-ports
./distribute_galenpy.sh -no-upload
export GALENPY_VERSION=$(python -c 'import py; print py.__version__')
pip install dist/galenpy-${GALENPY_VERSION}-py2.py3-none-any.whl
cd ..
