# Shadowsox Patch
## Fixes errors on Ubuntu 18.x - 19.x
When installing *ss* from `pip` repository on current Ubuntu GNU/Linux (18.x - 19.x), an error with OpenSSL symbol occurs:
```AttributeError: /usr/lib/x86_64-linux-gnu/libcrypto.so.1.1: undefined symbol: EVP_CIPHER_CTX_cleanup```

## Installation
1) Clone this repository and enter it's directory using 
`git clone https://github.com/AltcoinBaggins/shadowsox-patch ; cd shadowsox-patch`
2) Run `make install`

## Manual installation
1) Clone the repository and enter inside the directory (step 1. above)
2) Install Python3 and shadowsocks: `apt-get install python3 ; apt-get install python3-pip ; pip3 install shadowsocks`
3) Patch the crypto/openssl.py file in shadowsocks source 
`patch /usr/local/lib/python3.6/dist-packages/shadowsocks/crypto/openssl.py ssl-symbol.patch` 
replacing `python3.6` with your Python3 version, **or** run `make patch` to patch the file automatically
