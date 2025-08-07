# Contributing Guide

このプロジェクトへの貢献にご興味をお持ちいただき、ありがとうございます！
このドキュメントでは、プロジェクトに貢献する方法について説明します。

## 🤝 貢献の方法

### Issues
- バグ報告
- 機能要求
- ドキュメント改善提案
- 質問

### Pull Requests
- バグ修正
- 新機能追加
- ドキュメント改善
- テストの追加・改善

## 🏗️ 開発環境のセットアップ

### 前提条件
- Docker & Docker Compose
- pnpm
- Node.js 18以上
- Git

### 初期セットアップ

```bash
# リポジトリをフォーク・クローン
git clone https://github.com/YOUR_USERNAME/sample-db-docs-as-code.git
cd sample-db-docs-as-code

# 依存関係のインストール
pnpm install

# Git hooks の設定
pnpm lefthook install

# データベースの起動
pnpm db:serve

# ドキュメントの生成
pnpm db:schema
pnpm er:build
```

### 開発サーバーの起動

```bash
# VitePress開発サーバー
pnpm docs:dev

# ER図サーバー（別ターミナル）
pnpm er:serve
```

## 📝 コーディング規約

### SQL

- **フォーマット**: `sql-formatter` を使用（`.sql-formatter.json` の設定に従う）
- **命名規則**: スネークケース（例: `m_employee`, `employee_id`）
- **キーワード**: 大文字を使用（`SELECT`, `FROM`, `WHERE` など）
- **マイグレーション**:
  - DDL: `V{version}__{description}.sql`
  - Repeatable: `R__{description}.sql`
  - DMLは環境別に `seed/` 配下に配置

### TypeScript/JavaScript

- **フォーマット**: Prettier（プロジェクトの設定に従う）
- **命名規則**: camelCase
- **インポート**: ESModules形式を使用

## 🔄 開発ワークフロー

### 1. ブランチ戦略

```bash
# 機能開発用のブランチを作成
git checkout -b feature/your-feature-name

# バグ修正用のブランチを作成  
git checkout -b fix/bug-description

# ドキュメント更新用のブランチを作成
git checkout -b docs/update-description
```

### 2. 変更の作成

#### データベーススキーマの変更

```bash
# 1. マイグレーションファイルを作成
# sql/migration/V{version}__{description}.sql

# 2. データベースをリビルド
pnpm db:rebuild

# 3. スキーマドキュメントを再生成
pnpm db:schema

# 4. ER図を更新
pnpm er:build

# 5. ドキュメントサイトで確認
pnpm docs:dev
```

#### ドキュメント・設定の変更

```bash
# VitePressの設定やドキュメントを編集後
pnpm docs:dev
```

### 3. コミット前の確認

Git hooks により自動実行されますが、手動での確認も推奨：

```bash
# SQL整形
pnpm sql:fix

# スキーマドキュメント再生成（SQLファイル変更時）
pnpm db:schema

# ドキュメントのビルド確認
pnpm docs:build
```

### 4. コミット・プッシュ

```bash
# 変更をステージング
git add .

# コミット（pre-commit hookが実行される）
git commit -m "feat: add new employee table"

# プッシュ
git push origin your-branch-name
```

## 📋 Pull Request ガイドライン

### PR作成前チェックリスト

- [ ] 適切なブランチ名を使用している
- [ ] コミットメッセージが分かりやすい
- [ ] SQLファイルが正しくフォーマットされている
- [ ] スキーマドキュメントが更新されている
- [ ] ER図が最新の状態になっている
- [ ] ドキュメントサイトがビルドできる

### PR説明テンプレート

```markdown
## 概要
<!-- 変更内容の概要を記載 -->

## 変更内容
<!-- 具体的な変更点をリストアップ -->
- 
- 
- 

## 影響範囲
<!-- この変更が影響する箇所 -->
- [ ] データベーススキーマ
- [ ] ドキュメント生成
- [ ] ER図
- [ ] VitePress設定

## テスト方法
<!-- 変更内容の確認方法 -->
1. 
2. 
3. 

## スクリーンショット（必要に応じて）
<!-- UI変更がある場合はスクリーンショットを添付 -->

## その他
<!-- 追加で伝えたいことがあれば記載 -->
```

## 🛠️ トラブルシューティング

### よくある問題

#### データベース接続エラー
```bash
# コンテナの状態確認
docker ps

# ログの確認
docker logs local_mysql

# データベース再起動
pnpm db:rebuild
```

#### tbls実行エラー
```bash
# tblsコンテナのログ確認
docker logs tbls_container

# 手動でtbls実行
docker compose -f docker/compose.yaml up tbls
```

#### Git hooks エラー
```bash
# lefthookの再インストール
pnpm lefthook install

# 手動でSQL整形
pnpm sql:fix
```

### ローカル開発時のTips

```bash
# 特定のマイグレーションまで実行
docker compose -f docker/compose.yaml run --rm flyway -target=20250506.020 migrate

# スキーマのみ確認（Excel出力なし）
docker compose -f docker/compose.yaml run --rm tbls tbls doc

# 特定のテーブルのみドキュメント生成
docker compose -f docker/compose.yaml run --rm tbls tbls doc --table m_employee
```

## 📁 ファイル構成の理解

### マイグレーションファイルの命名規則

- `V{version}__{description}.sql`: バージョン管理されたマイグレーション
- `R__{description}.sql`: 繰り返し実行可能なマイグレーション（ビューなど）

### 設定ファイルの役割

- `.tbls.yml`: スキーマドキュメント生成設定
- `.sql-formatter.json`: SQL整形ルール
- `lefthook.yml`: Git hooks設定
- `.vitepress/config.ts`: ドキュメントサイト設定

## ✅ レビュー観点

Pull Request レビュー時の主な確認点：

### データベース設計
- [ ] テーブル・カラム命名が適切
- [ ] 適切なデータ型の選択
- [ ] インデックスの設計
- [ ] 外部キー制約の設定

### ドキュメント
- [ ] テーブル・カラムコメントが日本語で記載されている
- [ ] ER図の関連が正しく表示されている
- [ ] ドキュメントサイトが正しく表示される

### コード品質
- [ ] SQL整形ルールに従っている
- [ ] マイグレーションファイルの命名が正しい
- [ ] 破壊的変更がある場合は適切に説明されている

## 🎯 貢献のヒント

### 初心者向け
- ドキュメントの誤字脱字修正
- サンプルデータの追加
- README の改善

### 中級者向け
- 新しいテーブル・ビューの追加
- tbls設定の改善
- VitePress設定のカスタマイズ

### 上級者向け
- CI/CD パイプラインの改善
- パフォーマンス最適化
- セキュリティ改善

## 🙋‍♂️ 質問・サポート

- **Issue**: バグ報告や機能要求は GitHub Issues を利用
- **Discussion**: アーキテクチャや設計に関する議論
- **急ぎの質問**: メンテナーに直接連絡

---

貢献していただき、ありがとうございます！🎉
