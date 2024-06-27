#!/bin/bash

ARCH=$(uname -m)

case $ARCH in
    aarch64)
        URL="https://raw.githubusercontent.com/nnquangpro/PHP-Binary/main/packages/termux/aarch64/phpb"
        ;;
    armv7l)
        URL="https://raw.githubusercontent.com/nnquangpro/PHP-Binary/main/packages/termux/arm/phpb"
        ;;
    armv8l)
        URL="https://raw.githubusercontent.com/nnquangpro/PHP-Binary/main/packages/termux/aarch64/phpb"
        ;;
    i686)
        URL="https://raw.githubusercontent.com/nnquangpro/PHP-Binary/main/packages/termux/i686/phpb"
        ;;
    x86_64)
        URL="https://raw.githubusercontent.com/nnquangpro/PHP-Binary/main/packages/termux/x86_64/phpb"
        ;;
    *)
        echo "Unsupported architecture: $ARCH"
        exit 1
        ;;
esac

curl -L -o /data/data/com.termux/files/usr/bin/phpb $URL
chmod +x /data/data/com.termux/files/usr/bin/phpb

echo "PHPBinary installed successfully"

