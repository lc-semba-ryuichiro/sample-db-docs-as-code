# Sample DB Docs as Code

[![Build and Deploy VitePress site to Pages](https://github.com/lc-semba-ryuichiro/sample-db-docs-as-code/actions/workflows/build-and-deploy.yml/badge.svg)](https://github.com/lc-semba-ryuichiro/sample-db-docs-as-code/actions/workflows/build-and-deploy.yml)
[![Dependabot Updates](https://github.com/lc-semba-ryuichiro/sample-db-docs-as-code/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/lc-semba-ryuichiro/sample-db-docs-as-code/actions/workflows/dependabot/dependabot-updates)
[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/lc-semba-ryuichiro/sample-db-docs-as-code)

データベースのドキュメンテーションを「Docs as Code」アプローチで管理するサンプルプロジェクトです。MySQLデータベースから自動的にスキーマドキュメントとER図を生成し、VitePressを使用してWebサイトとして提供します。

## 🚀 特徴

- **自動スキーマドキュメント生成**: [tbls](https://github.com/k1LoW/tbls) を使用してMySQLスキーマからMarkdownドキュメントを自動生成
- **ER図の生成**: [Liam ERD](https://github.com/liam-hq/liam) でインタラクティブなER図を作成
- **静的サイト生成**: VitePressによる高速で美しいドキュメンテーションサイト
- **バージョン管理されたスキーマ**: Flyway migrationsによるスキーマ管理
- **Git Hooksによる自動化**: コミット時のSQL整形とドキュメント再生成
- **Docker化**: 完全にコンテナ化された開発環境

## 📋 必要要件

- Docker & Docker Compose
- pnpm
- Node.js (18以上推奨)

## 🔧 セットアップ

### 1. リポジトリのクローン

```bash
git clone https://github.com/lc-semba-ryuichiro/sample-db-docs-as-code.git
cd sample-db-docs-as-code
```

### 2. 依存関係のインストール

```bash
pnpm install
```

### 3. データベースの起動

```bash
pnpm db:serve
```

これによりMySQLデータベースが起動し、Flyway migrationsが実行されます。

### 4. ドキュメントの生成

```bash
pnpm db:schema
pnpm er:build
```

### 5. ドキュメントサイトの起動

```bash
pnpm docs:dev
```

ブラウザで `http://localhost:5173` を開くとドキュメントサイトが表示されます。

## 📚 使用方法

### データベース操作

```bash
# データベースコンテナの起動
pnpm db:serve

# データベースの完全リビルド
pnpm db:rebuild

# データベースコンテナの停止・削除
pnpm db:down

# スキーマドキュメントの生成
pnpm db:schema
```

### ドキュメント操作

```bash
# 開発サーバーの起動
pnpm docs:dev

# ドキュメントのビルド
pnpm docs:build

# ビルドしたドキュメントのプレビュー
pnpm docs:preview

# ER図の生成
pnpm er:build

# ER図のローカルサーバー起動
pnpm er:serve
```

### コード整形

```bash
# SQLファイルの整形
pnpm sql:fix
```

## 🗂️ プロジェクト構造

```
.
├── docs/
│   ├── schema/            # tblsが生成するスキーマドキュメント
│   ├── out/               # Liam ERDが生成するER図
│   └── .vitepress/        # VitePress設定
├── docker/
│   ├── compose.yaml       # Docker Compose設定
│   └── Dockerfile.tbls    # tbls用Dockerfile
├── sql/
│   ├── migration/          # Flyway migration files
│   │   ├── V*__*.sql      # バージョン管理されたDDL
│   │   └── R__views.sql   # 繰り返し実行可能なビュー定義
│   └── seed/              # 環境別データシード
│       ├── local/         # 仮想環境1: ローカル
│       ├── stg/           # 仮想環境2: Staging
│       └── prd/           # 仮想環境3: Production
├── .tbls.yml              # tbls設定ファイル
└── lefthook.yml           # Git hooks設定
```

## ⚙️ 設定ファイル

### .tbls.yml
tblsの設定ファイル。日本語でのドキュメント生成、ER図の設定、除外テーブルなどを定義します。

### lefthook.yml
Git pre-commit hookの設定。SQL整形とスキーマドキュメントの自動再生成を行います。

### .vitepress/config.ts
VitePress の設定ファイル。サイトのタイトル、ナビゲーション、サイドバーを設定します。

## 🔄 開発ワークフロー

1. `sql/migration/` でスキーマ変更を実施
2. `pnpm db:rebuild` でマイグレーションを適用
3. `pnpm db:schema` でドキュメントを再生成
4. `pnpm er:build` でER図を更新
5. `pnpm docs:dev` で変更をプレビュー

Git commit時には自動的にSQL整形とドキュメント再生成が実行されます。

## 🌐 アクセス情報

- **ドキュメントサイト**: <http://localhost:5173>
- **ER図**: <http://localhost:8080> (er:serve実行時)
- **MySQL**: localhost:3306
  - データベース: `sample_rdb`
  - ユーザー: `user`
  - パスワード: `Password`

## 📄 ライセンス

MIT License

## 🤝 貢献

コントリビューションを歓迎します！詳細は [CONTRIBUTING.md](CONTRIBUTING.md) をご確認ください。
