# Embulkの学習
## 参照先
下記の記事を参考に色々と触っております
  - [Embulkでバッチ処理をしてみよう 其の1](https://naokirin.hatenablog.com/entry/2018/12/31/162548)

## 実行コマンド
```sh
# Docker関連コマンド
## Embulkサンプルアプリのビルド
$ docker build -t embulk_examples .

## Dockerコンテナ内にログイン
### Dockerコンテナ起動
### docker run -it <イメージ名 or イメージID>
$ docker run -it embulk_examples
$ docker container exec -it コンテナ名 bash

# embulkのバージョン確認
$ docker run -it --rm embulk_examples sh -c "/embulk/embulk --version"

# embulkのヘルプコマンド
$ docker run -it --rm embulk_examples sh -c '/embulk/embulk --help'

# embulkのバッチ処理を実行: run
## runコマンドのオプションなどを確認する（runコマンドのヘルプ）
$ docker run -it --rm embulk_examples sh -c '/embulk/embulk run --help'
## run
$ docker run -it --rm embulk_examples sh -c '/embulk/embulk run'

# embulkの実行結果を確認する: preview
$ docker run -it --rm embulk_examples sh -c '/embulk/embulk preview config/example_1.yaml'
```
