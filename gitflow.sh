#!/usr/bin/env sh

git status

echo ""
echo "> Digite o commit:"
read mensagem
echo ""

git add .

git commit -m "'$mensagem'"

git push -u origin main