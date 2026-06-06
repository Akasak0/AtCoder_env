# ABC_env

## 概要
AkasakoのAtCoder用のディレクトリを公開リポジトリにしたもの(要するにAtCoder用ののdotfiles的なもの)。

## tree
```
.
├── mkAtcoderEnv.sh
├── README.md
└── template.cpp

1 directory, 3 files
```

## 環境
- macOS
- zsh
- gcc version 15.2.0 (Homebrew GCC 15.2.0_1)
- VS Code


## mkAtcoderEnv.shについて
ABC用のディレクトリを作るシェルスクリプト。

実行すると、ABC_envの下にABCxxxというディレクトリを作り、そこにA問題からD問題までの雛形ができる。最後に、VSCodeが開かれる。
なお、雛形はABC_envの下にあるtemplate.cpp。
