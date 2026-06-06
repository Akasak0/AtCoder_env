#!/usr/bin/env bash

# AtCoderのコンテスト用の環境を作成するスクリプト

# エラーが発生したらスクリプトを終了する
set -eu

# 開始時メッセージ
echo "start query"

# コンテスト番号の入力
echo "input contest number..."
read contest

# 今回コンテストのディレクトリを作成・移動
mkdir ./ABC$contest
cd ./ABC$contest

# a ~ d問題用のファイルを作成
touch {a,b,c,d}.cpp

# テンプレートからコピー
for file in *
do
    cat ../template.cpp > $file
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

# VS Codeで開く
code .
for i in d c b a
do
    code ./$i.cpp
done

# 終了時メッセージ
echo "query complete"
