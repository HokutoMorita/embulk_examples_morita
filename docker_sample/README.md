# Embulkの学習
## 参照先
下記の記事を参考に色々と触っております
  - [Embulkでバッチ処理をしてみよう 其の1](https://naokirin.hatenablog.com/entry/2018/12/31/162548)

## Dockerを使用して動作確認コマンド
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

### サンプル実行コマンド
```sh
# Embulkサンプルアプリのビルド
$ cd docker_sample
$ docker build -t embulk_examples .

# runコマンドでバッチ処理実行
## サンプル1
$ docker run -it --rm -v $(pwd)/output.txt:/workdir/output.txt embulk_examples sh -c '/embulk/embulk run config/example_1.yaml'

## サンプル2
$ docker run -it --rm embulk_examples sh -c '/embulk/embulk preview config/example_2.yaml'

## サンプル3
$ docker run -it --rm -e VALUE_LENGTH=5 embulk_examples sh -c '/embulk/embulk preview config/example_3.yaml.liquid'

## サンプル4
$ docker run -it --rm -v $(pwd)/output.txt:/workdir/output.txt -e ROWS=5 embulk_examples sh -c '/embulk/embulk run config/example_4.yaml.liquid'

# previewコマンドでプレビュー表示
$ docker run -it --rm embulk_examples sh -c '/embulk/embulk preview config/example_1.yaml'
```

## Dockerを使用しない場合の動作確認コマンド
```sh
# Javaのインストール
$ brew install homebrew/cask-versions/adoptopenjdk8 --cask

# embulkのインストール
$ brew install embulk

# embulkのバージョン確認
$ embulk --version

# embulkのヘルプコマンド
$ embulk --help
```

### サンプル実行コマンド
```sh
# 作業ディレクトリに移動
$ cd local_sample

# (初回のみ)
## プラグインテンプレートの作成
$ embulk new ruby-input example
$ embulk bundle

# サンプルプログラム実行
## embulk preview -L <プラグインのディレクトリ> example.yml
$ embulk preview -L '.' example.yml
-- 今回は作成したプラグインがlocal_sample/embulk-input-exampleにあるため、ドットを指定している
```
