# m_permission

## 概要

パーミッションマスタ

<details>
<summary><strong>テーブル定義</strong></summary>

```sql
CREATE TABLE `m_permission` (
  `perm_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'パーミッションID',
  `company_id` bigint unsigned DEFAULT NULL COMMENT '会社ID (NULL = 全社共通)',
  `perm_code` varchar(50) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT '権限コード',
  `perm_name` varchar(100) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT '権限名称',
  `perm_desc` varchar(255) COLLATE utf8mb4_ja_0900_as_cs_ks DEFAULT NULL COMMENT '説明',
  `perm_group` varchar(50) COLLATE utf8mb4_ja_0900_as_cs_ks DEFAULT NULL COMMENT '機能グループ',
  `valid_from` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '有効開始日時',
  `valid_to` datetime NOT NULL DEFAULT '9999-12-31 23:59:59' COMMENT '有効終了日時',
  `deleted_at` datetime DEFAULT NULL COMMENT '論理削除日時',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登録日時',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  `version` int unsigned NOT NULL DEFAULT '1' COMMENT 'バージョン',
  PRIMARY KEY (`perm_id`),
  UNIQUE KEY `company_id` (`company_id`,`perm_code`,`deleted_at`),
  KEY `perm_group` (`perm_group`),
  CONSTRAINT `m_permission_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `m_company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=[Redacted by tbls] DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ja_0900_as_cs_ks COMMENT='パーミッションマスタ'
```

</details>

## カラム一覧

| #  | 名前         | タイプ             | デフォルト値              | Nullable | Extra Definition                              | 子テーブル                                     | 親テーブル                                     | コメント                     |
| -- | ---------- | --------------- | ------------------- | -------- | --------------------------------------------- | ----------------------------------------- | ----------------------------------------- | ------------------------ |
| 1  | perm_id    | bigint unsigned |                     | false    | auto_increment                                | [m_role_permission](m_role_permission.md) | [m_role_permission](m_role_permission.md) | パーミッションID                |
| 2  | company_id | bigint unsigned |                     | true     |                                               |                                           | [m_company](m_company.md)                 | 会社ID (NULL = 全社共通)       |
| 3  | perm_code  | varchar(50)     |                     | false    |                                               |                                           |                                           | 権限コード                    |
| 4  | perm_name  | varchar(100)    |                     | false    |                                               |                                           |                                           | 権限名称                     |
| 5  | perm_desc  | varchar(255)    |                     | true     |                                               |                                           |                                           | 説明                       |
| 6  | perm_group | varchar(50)     |                     | true     |                                               |                                           |                                           | 機能グループ                   |
| 7  | valid_from | datetime        | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED                             |                                           |                                           | 有効開始日時                   |
| 8  | valid_to   | datetime        | 9999-12-31 23:59:59 | false    |                                               |                                           |                                           | 有効終了日時                   |
| 9  | deleted_at | datetime        |                     | true     |                                               |                                           |                                           | 論理削除日時                   |
| 10 | created_at | datetime        | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED                             |                                           |                                           | 登録日時                     |
| 11 | updated_at | datetime        | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |                                           |                                           | 更新日時                     |
| 12 | version    | int unsigned    | 1                   | false    |                                               |                                           |                                           | バージョン                    |

## Viewpoints

| 名前                                   | 定義                                     |
| ------------------------------------ | -------------------------------------- |
| [認可関連 ViewPoint](viewpoint-0.md)     | 認可関連のテーブルをまとめた ViewPoint               |

## 制約一覧

| # | 名前                  | タイプ         | 定義                                                         |
| - | ------------------- | ----------- | ---------------------------------------------------------- |
| 1 | company_id          | UNIQUE      | UNIQUE KEY company_id (company_id, perm_code, deleted_at)  |
| 2 | m_permission_ibfk_1 | FOREIGN KEY | FOREIGN KEY (company_id) REFERENCES m_company (company_id) |
| 3 | PRIMARY             | PRIMARY KEY | PRIMARY KEY (perm_id)                                      |

## INDEX一覧

| # | 名前         | 定義                                                                    |
| - | ---------- | --------------------------------------------------------------------- |
| 1 | perm_group | KEY perm_group (perm_group) USING BTREE                               |
| 2 | PRIMARY    | PRIMARY KEY (perm_id) USING BTREE                                     |
| 3 | company_id | UNIQUE KEY company_id (company_id, perm_code, deleted_at) USING BTREE |

## ER図

![er](m_permission.svg)

---

> Generated by [tbls](https://github.com/k1LoW/tbls)
