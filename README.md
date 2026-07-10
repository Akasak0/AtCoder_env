# ABC_env

## 概要
AkasakoのAtCoder用のディレクトリを公開リポジトリにしたもの(要するにAtCoder用ののdotfiles的なもの)。

## tree
```
.
├── del_execute_files.sh
├── mkAtcoderEnv.sh
├── README.md
└── templates
    ├── dbg.sh
    └── template.cpp

2 directories, 5 files


```

## 環境
|||
|-|-|
|OS|macOS|
|shell|fish|
|gcc version| 16.1.0 (Homebrew GCC 16.1.0)|
|editor|VS Code|
|lldb|lldb-2100.0.17.203 Apple Swift version 6.3.3 (swiftlang-6.3.3.1.3 clang-2100.1.1.101)|


## mkAtcoderEnv.sh について
ABC用のディレクトリを作るシェルスクリプト。

実行すると、ABC_envの下にABCxxxというディレクトリを作り、そこにA問題からD問題までの雛形と、それらを実行するファイル`exe_{a,b,c,d}.sh`ができる。最後に、VSCodeが開かれる。
なお、雛形はABC_envの下にあるtemplate.cpp。また、ディレクトリ名の入力の時に`!name`と入力すると、ディレクトリ名を好きに名付けることができる。


## del_execute_files.sh について
`mkAtcoderEnv.sh` によって作られたディレクトリに含まれている`.out`や`exe_{a,b,c,d}.sh`を消すシェルスクリプト。

## dbg.sh について
lldb でのデバッグを簡単に行うことができるシェルスクリプト。実行後、指定した問題をデバッグすることができる。
