#!/usr/bin/env bash

# AtCoderのコンテスト用の環境を作成するスクリプト

# エラーが発生したらスクリプトを終了する
set -eu

# 開始時メッセージ
echo "Start query"

# コンテスト番号の入力
echo "Input contest number"
echo "If you want to name directory yourself, input !name."
echo ""
echo "--- INPUT OPEN ---"

read contest

echo "--- INPUT CLOSE ---"
echo ""

# !name かどうか?
if [ $contest == "!name" ]; then
    echo "catch !name"

    # ディレクトリ名を入力
    echo "Input directory name"
    echo ""
    echo "--- INPUT OPEN ---"

    read name

    echo "--- INPUT CLOSE ---"
    echo ""

    # 今回コンテストのディレクトリを作成・移動
    mkdir $name
    cd ./$name
else
    # 今回コンテストのディレクトリを作成・移動
    mkdir ./ABC$contest
    cd ./ABC$contest
fi

# a ~ d問題用のファイルを作成
touch {a,b,c,d}.cpp

# テンプレートからコピー
for file in *
do
    cat ../templates/template.cpp > $file
done

# a ~ d問題用の実行用ファイルを作成
mkdir ./tmp ./.out
cd ./tmp

touch exe_{a,b,c,d}.sh
for file in {a,b,c,d}
do
    {
        echo "#!/usr/bin/env bash"
        echo "set -eu"
        echo "g++ $file.cpp -o .out/$file.out"
        echo ".out/$file.out"
    } > exe_$file.sh
    chmod +x exe_$file.sh
    mv exe_$file.sh ..
done
cd ..
rm -r ./tmp

# デバッグ用ファイルをコピー
cp ../templates/dbg.sh ./dbg.sh

# VS Codeで開く
code .
for i in d c b a
do
    code ./$i.cpp
done

# 終了時メッセージ
echo "Query complete"
