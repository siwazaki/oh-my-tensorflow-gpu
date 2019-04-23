# oh-my-tensorboard-gpu

```oh-my-tensorboard-gpu = jupyter lab + jupyter/datascience-notebook + tensorflow-gpu```

## 下準備

jupyter lab の実行ユーザーをホストの実行ユーザーと合わせる。
自分の gid と uid を調べて、`docker-compose.yml`の \${GID}、\${UID}を置き換える。

<調べかた>

```bash
> id -g # gid
> id -u # uid
```

<docker-compose.yml の例>

```yaml
NB_GID: 20
NB_UID: 500
```

## docker イメージのビルド

```bash
> docker-compose build
```

## docker コンテナの実行

```bash
> docker-compose up -d
```

補足
docker-compose.yaml の GID、UID をいれかえなくても

```bash
> env GID=20 UID=500 docker-compose up -d
```

とすれば UID、GID がセットされる。

## 動作確認

[ローカルの 7777 ポートにアクセスする。](http://localhost:7777)

## ホームディレクトリ

/notebooks(ローカルの./notebooks)

## [NOTE] パスワードについて

デフォルトではパスワードなしです。パスワードは`jupyter_notebook_config.py`で設定できます。
