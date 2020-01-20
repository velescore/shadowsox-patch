PYTHON_DIRNAME = $(shell ls /usr/local/lib/ | grep python3 | sort | tail -n 1)

install:
	@echo "Checking dependencies ..."
	@ls /usr/local/lib/ | grep python3 || ( apt-get update ; apt-get install python3 ; apt-get install python3-pip )
	@echo "Installing shadowsocks package ..."
	@pip3 install shadowsocks || pip install shadowsocks
	make patch

patch:
	@echo "Patching shadowsocks package ..."
	patch /usr/local/lib/$(PYTHON_DIRNAME)/dist-packages/shadowsocks/crypto/openssl.py ssl-symbol.patch
	@echo "DONE"
