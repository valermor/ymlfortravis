chmod -R +x galen-api-ports
cd galen-api-ports
echo "LISTING CONTENT OF GALENPY"
ls -al
echo "BUILDING GALENPY"
./distribute_galenpy.sh -no-upload
export GALENPY_VERSION=$(python -c 'import py; print py.__version__')
echo "INSTALLING GALENPY"
pip install dist/galenpy-${GALENPY_VERSION}-py2.py3-none-any.whl
pip freeze
cd ..
