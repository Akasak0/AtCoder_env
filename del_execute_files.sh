#!/usr/bin/env bash

# 開始メッセージ
echo "Start query"
echo "Input directory name to execute file"
echo ""
echo "--- INPUT OPEN ---"

read directory_name

echo "--- INPUT CLOSE ---"
echo ""
echo "Delete ${directory_name}, REARY? [y/n]"
read yn
if [ $yn == "y" ]; then
    echo "Delete ${directory_name}..."
    rm -r ./${directory_name}/{.out,exe_*,dbg.sh}
    echo "Query complete"
else
    echo "Query stoped!"
fi
