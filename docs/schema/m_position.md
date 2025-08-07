# m_position

## 概要

役職マスタ

<details>
<summary><strong>テーブル定義</strong></summary>

```sql
CREATE TABLE `m_position` (
  `position_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '役職ID',
  `parent_position_id` bigint unsigned DEFAULT NULL COMMENT '上位役職ID',
  `company_id` bigint unsigned NOT NULL COMMENT '会社ID',
  `position_name` varchar(100) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT '役職名称',
  `grade_level` smallint NOT NULL COMMENT '等級・序列（数値が小さいほど上位）',
  `is_managerial` tinyint(1) NOT NULL DEFAULT '0' COMMENT '管理職フラグ',
  `valid_from` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '有効開始日時',
  `valid_to` datetime NOT NULL DEFAULT '9999-12-31 23:59:59' COMMENT '有効終了日時',
  `deleted_at` datetime DEFAULT NULL COMMENT '論理削除日時',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登録日時',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  `version` int unsigned NOT NULL DEFAULT '1' COMMENT 'バージョン',
  PRIMARY KEY (`position_id`),
  UNIQUE KEY `company_id` (`company_id`,`position_name`,`deleted_at`),
  KEY `company_id_2` (`company_id`,`grade_level`),
  KEY `fk_position_parent` (`parent_position_id`),
  CONSTRAINT `fk_position_parent` FOREIGN KEY (`parent_position_id`) REFERENCES `m_position` (`position_id`),
  CONSTRAINT `m_position_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `m_company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=[Redacted by tbls] DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ja_0900_as_cs_ks COMMENT='役職マスタ'
```

</details>

## カラム一覧

| #  | 名前                 | タイプ             | デフォルト値              | Nullable | Extra Definition                              | 子テーブル                                                   | 親テーブル                       | コメント                               |
| -- | ------------------ | --------------- | ------------------- | -------- | --------------------------------------------- | ------------------------------------------------------- | --------------------------- | ---------------------------------- |
| 1  | position_id        | bigint unsigned |                     | false    | auto_increment                                | [m_employee](m_employee.md) [m_position](m_position.md) |                             | 役職ID                               |
| 2  | parent_position_id | bigint unsigned |                     | true     |                                               |                                                         | [m_position](m_position.md) | 上位役職ID                             |
| 3  | company_id         | bigint unsigned |                     | false    |                                               |                                                         | [m_company](m_company.md)   | 会社ID                               |
| 4  | position_name      | varchar(100)    |                     | false    |                                               |                                                         |                             | 役職名称                               |
| 5  | grade_level        | smallint        |                     | false    |                                               |                                                         |                             | 等級・序列（数値が小さいほど上位）                  |
| 6  | is_managerial      | tinyint(1)      | 0                   | false    |                                               |                                                         |                             | 管理職フラグ                             |
| 7  | valid_from         | datetime        | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED                             |                                                         |                             | 有効開始日時                             |
| 8  | valid_to           | datetime        | 9999-12-31 23:59:59 | false    |                                               |                                                         |                             | 有効終了日時                             |
| 9  | deleted_at         | datetime        |                     | true     |                                               |                                                         |                             | 論理削除日時                             |
| 10 | created_at         | datetime        | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED                             |                                                         |                             | 登録日時                               |
| 11 | updated_at         | datetime        | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |                                                         |                             | 更新日時                               |
| 12 | version            | int unsigned    | 1                   | false    |                                               |                                                         |                             | バージョン                              |

## 制約一覧

| # | 名前                 | タイプ         | 定義                                                                   |
| - | ------------------ | ----------- | -------------------------------------------------------------------- |
| 1 | company_id         | UNIQUE      | UNIQUE KEY company_id (company_id, position_name, deleted_at)        |
| 2 | fk_position_parent | FOREIGN KEY | FOREIGN KEY (parent_position_id) REFERENCES m_position (position_id) |
| 3 | m_position_ibfk_1  | FOREIGN KEY | FOREIGN KEY (company_id) REFERENCES m_company (company_id)           |
| 4 | PRIMARY            | PRIMARY KEY | PRIMARY KEY (position_id)                                            |

## INDEX一覧

| # | 名前                 | 定義                                                                        |
| - | ------------------ | ------------------------------------------------------------------------- |
| 1 | company_id_2       | KEY company_id_2 (company_id, grade_level) USING BTREE                    |
| 2 | fk_position_parent | KEY fk_position_parent (parent_position_id) USING BTREE                   |
| 3 | PRIMARY            | PRIMARY KEY (position_id) USING BTREE                                     |
| 4 | company_id         | UNIQUE KEY company_id (company_id, position_name, deleted_at) USING BTREE |

## ER図

![er](m_position.svg)

---

> Generated by [tbls](https://github.com/k1LoW/tbls)
