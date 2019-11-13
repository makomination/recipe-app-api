# recipe-app-api
レシピ情報のAPI開発

## 開発環境
Docker + Django でUnit Test を書きながらの開発。(TDD)

## 実行
`docker-compose up`

## unitテスト + linter(flake8)実行
`docker-compose run --rm app sh -c "python manage.py test && flake8`
