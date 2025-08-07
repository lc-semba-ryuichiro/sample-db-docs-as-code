# m_role

## 概要

ロールマスタ

<details>
<summary><strong>テーブル定義</strong></summary>

```sql
CREATE TABLE `m_role` (
  `role_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ロールID（PK）',
  `company_id` bigint unsigned DEFAULT NULL COMMENT '会社ID (NULL = 全社共通)',
  `role_code` varchar(30) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT 'ロールコード',
  `role_name` varchar(100) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT 'ロール名称',
  `role_desc` varchar(255) COLLATE utf8mb4_ja_0900_as_cs_ks DEFAULT NULL COMMENT 'ロール説明',
  `is_system_role` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'システムロール (1=システム)',
  `valid_from` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '有効開始日時',
  `valid_to` datetime NOT NULL DEFAULT '9999-12-31 23:59:59' COMMENT '有効終了日時',
  `deleted_at` datetime DEFAULT NULL COMMENT '論理削除日時',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登録日時',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  `version` int unsigned NOT NULL DEFAULT '1' COMMENT 'バージョン',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `company_id` (`company_id`,`role_code`,`deleted_at`),
  KEY `is_system_role` (`is_system_role`),
  CONSTRAINT `m_role_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `m_company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=[Redacted by tbls] DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ja_0900_as_cs_ks COMMENT='ロールマスタ'
```

</details>

## カラム一覧

| #  | 名前             | タイプ             | デフォルト値              | Nullable | Extra Definition                              | 子テーブル                                     | 親テーブル                                     | コメント                        |
| -- | -------------- | --------------- | ------------------- | -------- | --------------------------------------------- | ----------------------------------------- | ----------------------------------------- | --------------------------- |
| 1  | role_id        | bigint unsigned |                     | false    | auto_increment                                | [m_role_permission](m_role_permission.md) | [m_role_permission](m_role_permission.md) | ロールID（PK）                   |
| 2  | company_id     | bigint unsigned |                     | true     |                                               |                                           | [m_company](m_company.md)                 | 会社ID (NULL = 全社共通)          |
| 3  | role_code      | varchar(30)     |                     | false    |                                               |                                           |                                           | ロールコード                      |
| 4  | role_name      | varchar(100)    |                     | false    |                                               |                                           |                                           | ロール名称                       |
| 5  | role_desc      | varchar(255)    |                     | true     |                                               |                                           |                                           | ロール説明                       |
| 6  | is_system_role | tinyint(1)      | 0                   | false    |                                               |                                           |                                           | システムロール (1=システム)            |
| 7  | valid_from     | datetime        | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED                             |                                           |                                           | 有効開始日時                      |
| 8  | valid_to       | datetime        | 9999-12-31 23:59:59 | false    |                                               |                                           |                                           | 有効終了日時                      |
| 9  | deleted_at     | datetime        |                     | true     |                                               |                                           |                                           | 論理削除日時                      |
| 10 | created_at     | datetime        | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED                             |                                           |                                           | 登録日時                        |
| 11 | updated_at     | datetime        | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |                                           |                                           | 更新日時                        |
| 12 | version        | int unsigned    | 1                   | false    |                                               |                                           |                                           | バージョン                       |

## Viewpoints

| 名前                                   | 定義                                     |
| ------------------------------------ | -------------------------------------- |
| [認可関連 ViewPoint](viewpoint-0.md)     | 認可関連のテーブルをまとめた ViewPoint               |

## 制約一覧

| # | 名前            | タイプ         | 定義                                                         |
| - | ------------- | ----------- | ---------------------------------------------------------- |
| 1 | company_id    | UNIQUE      | UNIQUE KEY company_id (company_id, role_code, deleted_at)  |
| 2 | m_role_ibfk_1 | FOREIGN KEY | FOREIGN KEY (company_id) REFERENCES m_company (company_id) |
| 3 | PRIMARY       | PRIMARY KEY | PRIMARY KEY (role_id)                                      |

## INDEX一覧

| # | 名前             | 定義                                                                    |
| - | -------------- | --------------------------------------------------------------------- |
| 1 | is_system_role | KEY is_system_role (is_system_role) USING BTREE                       |
| 2 | PRIMARY        | PRIMARY KEY (role_id) USING BTREE                                     |
| 3 | company_id     | UNIQUE KEY company_id (company_id, role_code, deleted_at) USING BTREE |

## ER図

![er](m_role.svg)

---

> Generated by [tbls](https://github.com/k1LoW/tbls)
