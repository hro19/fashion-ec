# railsコマンド集

## 【基礎】
`ruby -version`

`rails -v`

## development環境でサーバーを立ち上げる
`rails s`

## 【モデル、コントロールの作成】
`rails g scaffold post name:string content:text`

`rails g scaffold question name:string title:string content:text`

`rails g scaffold answer name:string content:text question:references`

`rails g scaffold customers name:string email:string password:password_digest status:integer`

## 【マイグレーションの実行】
`rails db:migrate`
※データが入っていなければ表示はできないために、DB brower for sqliteでデータを入れよう。

git bushで実行してください。

docker内でrailsが動いたまま、imageを削除してしまったときに、まだrailsが動いたままの状態になっております。その場合は tmp/pids フォルダの中を削除することでも解決できます。

`rm -rf tmp/pids/*`


##  docker内でrailsにコマンド実行する

### composeを立ち上げる(バックグラウンドで)
`docker-compose up -d`

	webサービス内のコンテナに bash シェルで入ることができます
	docker-compose exec web bash

		rakeのバージョンを確認する
		rails -V

		rails（docker内での）のバージョンを確認する
		rails -v

		ruby -version
		ruby（docker内での）のバージョンを確認する

		※ローカル環境とdocker環境でのrails・rubyのバージョンが異なることを確認する、ちなみにローカル環境でrailsサーバーを実行しようとしてもバージョンが異なりますと怒られますので、dockerを立ち上げて開発をするように

		サーバー立ち上げ
		rails s

	コンテナの外に出る、しかしdocker-composeは立ち上がったままです
	ctrl z

### サービスを停止するだけ、コンテナーはそのまま残る
`docker-compose stop`

### サービスを停止し、コンテナーやネットワーク、ボリュームも削除する
`docker-compose down`

### 実行中のコンテナを再起動するコマンド
`docker-compose restart`

## 作成したdockerコンテナをすべて削除する
`docker-compose down --rmi all --volumes --remove-orphans`
