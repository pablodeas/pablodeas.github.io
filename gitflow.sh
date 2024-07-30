#!/usr/bin/env sh

echo ""
echo "> Digite o commit:"
read mensagem

git add .

git commit -m "'$mensagem'"

git push -u origin main