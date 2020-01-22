![Master Build Status](https://img.shields.io/travis/velescore/shadowsox-patch/master?style=for-the-badge) ![Licence](https://img.shields.io/github/license/velescore/shadowsox-patch?color=blue&style=for-the-badge)

# Shadowsox Patch
## Fixes errors on Ubuntu 18.x - 19.x
When installing popular Socks5 implementation from `pip` repository on current Ubuntu GNU/Linux (18.x - 19.x), an error with OpenSSL symbol occurs:
```AttributeError: /usr/lib/x86_64-linux-gnu/libcrypto.so.1.1: undefined symbol: EVP_CIPHER_CTX_cleanup```
This patch fixes the error in the official Python package, automatically using makefile.

## Installation
1) Clone this repository, enter inside and run make using following commands: 
```
git clone https://github.com/velescore/shadowsox-patch
cd shadowsox-patch
make
```

## Manual installation
1) Clone the repository and enter inside the directory (step 1. above)
2) Install Python3 and shadowsocks: `apt-get install python3 ; apt-get install python3-pip ; pip3 install shadowsocks`
3) Patch the crypto/openssl.py file in shadowsocks source 
`patch /usr/local/lib/python3.6/dist-packages/shadowsocks/crypto/openssl.py ssl-symbol.patch` 
replacing `python3.6` with your Python3 version, **or** run `make patch` to patch the file automatically
