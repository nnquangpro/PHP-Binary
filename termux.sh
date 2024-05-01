arch=$(uname -m)
Bindir="$PREFIX/bin"
curl -o "$Bindir/phpb" "https://raw.githubusercontent.com/nnquangpro/PHP-Binary/main/packages/termux/$arch/phpb"
chmod +x "$Bindir/phpb"
echo "-------------------------"
echo "Đã cài thành công PHP Binary"
echo
