#!/bin/bash

ARCH=$(uname -m)
OS=$(grep '^ID=' /etc/os-release | cut -d= -f2)
VERSION=$(grep 'VERSION_ID=' /etc/os-release | cut -d= -f2 | tr -d '"')

case $ARCH in
#    aarch64)
#        ARCH="arm64"
#        ;;
#    armv7l)
#        ARCH="armv7"
#        ;;
    x86_64)
        ARCH="x86_64"
        ;;
    *)
        echo "Unsupported architecture: $ARCH"
        exit 1
        ;;
esac

URL=""
case $OS in
    debian)
        URL="https://raw.githubusercontent.com/nnquangpro/PHP-Binary/main/packages/debian-${VERSION}/${ARCH}/phpb"
        ;;
    ubuntu)
        URL="https://raw.githubusercontent.com/nnquangpro/PHP-Binary/main/packages/ubuntu-${VERSION}/${ARCH}/phpb"
        ;;
    rockylinux)
        URL="https://raw.githubusercontent.com/nnquangpro/PHP-Binary/main/packages/rockylinux-${VERSION}/${ARCH}/phpb"
        ;;
    *)
        echo "Unsupported OS: $OS"
        exit 1
        ;;
esac

curl -L -o $HOME/phpb $URL
chmod +x $HOME/phpb

echo "PHP binary installed successfully"
echo "Note: For Linux OS, PHPBinary will be installed into \$HOME/phpb ($HOME/phpb)"
echo "Please run PHPBinary files using the command:"
echo "$HOME/phpb FILE_PHPBINARY"
