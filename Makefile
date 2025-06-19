.PHONY: up down build ps p1 p2 p3 

# 全てのコンテナを起動
up:
	docker-compose up -d

# 全てのコンテナを停止・削除
down:
	docker-compose down

# 全てのコンテナを--no-cacheオプション付きでビルド
build:
	docker-compose build --no-cache

ps:
	docker-compose ps

# 各プロジェクトコンテナへのSSH接続
p1:
	docker-compose exec project1 /bin/bash

p2:
	docker-compose exec project2 /bin/bash

p3:
	docker-compose exec project3 /bin/bash

# ヘルプ
help:
	@echo "使用可能なコマンド:"
	@echo "  make up              - コンテナを起動"
	@echo "  make down            - コンテナを停止・削除"
	@echo "  make build           - コンテナを--no-cacheオプション付きでビルド"
	@echo "  make p1    - project1コンテナにSSH接続"
	@echo "  make p2    - project2コンテナにSSH接続"
	@echo "  make p3    - project3コンテナにSSH接続" 
