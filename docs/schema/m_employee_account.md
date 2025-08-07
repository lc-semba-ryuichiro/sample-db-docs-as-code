# m_employee_account

## 概要

従業員振込口座マスタ

<details>
<summary><strong>テーブル定義</strong></summary>

```sql
CREATE TABLE `m_employee_account` (
  `account_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '口座ID',
  `emp_id` bigint unsigned NOT NULL COMMENT '従業員ID',
  `bank_code` char(4) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT '銀行コード',
  `branch_code` char(3) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT '支店コード',
  `account_type` enum('FUTSU','TOUZA','SAVINGS','OTHER') COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL DEFAULT 'FUTSU' COMMENT '口座種別',
  `account_no` char(7) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT '口座番号 (7桁)',
  `account_name` varchar(100) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT '口座名義 (カナ推奨)',
  `currency_code` char(3) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL DEFAULT 'JPY' COMMENT '通貨 (ISO 4217)',
  `purpose` enum('EXPENSE','PAYROLL','BONUS','OTHER') COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL DEFAULT 'EXPENSE' COMMENT '用途区分',
  `priority` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '同一用途内での優先順位 (1=最優先)',
  `valid_from` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '有効開始日時',
  `valid_to` datetime NOT NULL DEFAULT '9999-12-31 23:59:59' COMMENT '有効終了日時',
  `deleted_at` datetime DEFAULT NULL COMMENT '論理削除',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登録日時',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  `version` int unsigned NOT NULL DEFAULT '1' COMMENT 'バージョン',
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `emp_id` (`emp_id`,`purpose`,`priority`,`deleted_at`),
  KEY `emp_id_2` (`emp_id`,`purpose`,`priority`),
  KEY `bank_code` (`bank_code`,`branch_code`),
  CONSTRAINT `m_employee_account_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `m_employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=[Redacted by tbls] DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ja_0900_as_cs_ks COMMENT='従業員振込口座マスタ'
```

</details>

## カラム一覧

| #  | 名前            | タイプ                                       | デフォルト値              | Nullable | Extra Definition                              | 子テーブル      | 親テーブル                       | コメント                              |
| -- | ------------- | ----------------------------------------- | ------------------- | -------- | --------------------------------------------- | ---------- | --------------------------- | --------------------------------- |
| 1  | account_id    | bigint unsigned                           |                     | false    | auto_increment                                |            |                             | 口座ID                              |
| 2  | emp_id        | bigint unsigned                           |                     | false    |                                               |            | [m_employee](m_employee.md) | 従業員ID                             |
| 3  | bank_code     | char(4)                                   |                     | false    |                                               |            |                             | 銀行コード                             |
| 4  | branch_code   | char(3)                                   |                     | false    |                                               |            |                             | 支店コード                             |
| 5  | account_type  | enum('FUTSU','TOUZA','SAVINGS','OTHER')   | FUTSU               | false    |                                               |            |                             | 口座種別                              |
| 6  | account_no    | char(7)                                   |                     | false    |                                               |            |                             | 口座番号 (7桁)                         |
| 7  | account_name  | varchar(100)                              |                     | false    |                                               |            |                             | 口座名義 (カナ推奨)                       |
| 8  | currency_code | char(3)                                   | JPY                 | false    |                                               |            |                             | 通貨 (ISO 4217)                     |
| 9  | purpose       | enum('EXPENSE','PAYROLL','BONUS','OTHER') | EXPENSE             | false    |                                               |            |                             | 用途区分                              |
| 10 | priority      | tinyint unsigned                          | 1                   | false    |                                               |            |                             | 同一用途内での優先順位 (1=最優先)               |
| 11 | valid_from    | datetime                                  | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED                             |            |                             | 有効開始日時                            |
| 12 | valid_to      | datetime                                  | 9999-12-31 23:59:59 | false    |                                               |            |                             | 有効終了日時                            |
| 13 | deleted_at    | datetime                                  |                     | true     |                                               |            |                             | 論理削除                              |
| 14 | created_at    | datetime                                  | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED                             |            |                             | 登録日時                              |
| 15 | updated_at    | datetime                                  | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |            |                             | 更新日時                              |
| 16 | version       | int unsigned                              | 1                   | false    |                                               |            |                             | バージョン                             |

## 制約一覧

| # | 名前                        | タイプ         | 定義                                                        |
| - | ------------------------- | ----------- | --------------------------------------------------------- |
| 1 | emp_id                    | UNIQUE      | UNIQUE KEY emp_id (emp_id, purpose, priority, deleted_at) |
| 2 | m_employee_account_ibfk_1 | FOREIGN KEY | FOREIGN KEY (emp_id) REFERENCES m_employee (emp_id)       |
| 3 | PRIMARY                   | PRIMARY KEY | PRIMARY KEY (account_id)                                  |

## INDEX一覧

| # | 名前        | 定義                                                                    |
| - | --------- | --------------------------------------------------------------------- |
| 1 | bank_code | KEY bank_code (bank_code, branch_code) USING BTREE                    |
| 2 | emp_id_2  | KEY emp_id_2 (emp_id, purpose, priority) USING BTREE                  |
| 3 | PRIMARY   | PRIMARY KEY (account_id) USING BTREE                                  |
| 4 | emp_id    | UNIQUE KEY emp_id (emp_id, purpose, priority, deleted_at) USING BTREE |

## ER図

![er](m_employee_account.svg)

---

> Generated by [tbls](https://github.com/k1LoW/tbls)
