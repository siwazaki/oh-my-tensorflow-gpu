# oh-my-tensorflow-gpu

```oh-my-tensorflow-gpu = jupyterlab + tensorflow-gpu```

## docker イメージのビルド

```bash
> docker-compose build
```

## docker コンテナの実行

```bash
> docker-compose up -d
```

とすれば UID、GID がセットされる。

## 動作確認

[ローカルの 7777 ポートにアクセスする。](http://localhost:7777)

## ホームディレクトリ

/notebooks(ローカルの./notebooks)

## [NOTE] パスワードについて

デフォルトではパスワードなしです。パスワードは`docker-compose.yml`で設定できます。
