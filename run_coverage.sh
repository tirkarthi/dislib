#!/bin/bash

/etc/init.d/ssh start

coverage run --source dislib tests/tests.py
coverage report -m

bash <(curl -s https://codecov.io/bash)
