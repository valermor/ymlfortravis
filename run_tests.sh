pip install wheel
./distribute_galenpy.sh -no-upload
pip install dist/galenpy-0.1.2-py2.py3-none-any.whl

cd ..
git clone git@github.com:valermor/galen-sample-py-tests.git
cd galen-sample-py-tests
./scripts/install_requirements.sh
./run_webdriver_tests.sh
