# Drone

## 開発環境

- Java 11
- Spring 2.7.15


Docker 起動

```
$ docker-compose up -d
$ docker exec -it digitalojt-drone /bin/bash
```

アプリを起動


```
# ./gradlew wrapper --gradle-version 7.4
# ./gradlew build
# ./gradlew bootRun
```

http://localhost:8080/ を開く

## デプロイ： App Runner with ECS

ECS Fargate by App Runner の構築

App Runner はフルマネージド型のコンテナアプリケーションサービスであり、簡単に ECS・Fargate で Web アプリを構築できる。

AppRunner 上ではビルドコマンドとスタートコマンドを設定する。

```
$ ./gradlew bootJar && cp build/libs/dev-0.0.1.jar ./
$ java -jar ./dev-0.0.1.jar
```

![AppRunner](https://i.gyazo.com/da1bd2486260b918fa108519194c376d.pngg "AppRunner")

コンテナは ECR にプッシュして読み込む。詳しくは https://zenn.dev/thirosue/books/b3fa0e1150f110/viewer/46a040 を参照してください。