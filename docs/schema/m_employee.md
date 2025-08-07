# m_employee

## 概要

従業員マスタ

<details>
<summary><strong>テーブル定義</strong></summary>

```sql
CREATE TABLE `m_employee` (
  `emp_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '従業員ID',
  `company_id` bigint unsigned NOT NULL COMMENT '会社ID',
  `org_id` bigint unsigned NOT NULL COMMENT '所属組織ID',
  `position_id` bigint unsigned DEFAULT NULL COMMENT '役職ID',
  `emp_code` varchar(20) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT '社員番号',
  `azure_ad_object_id` char(36) COLLATE utf8mb4_ja_0900_as_cs_ks DEFAULT NULL COMMENT 'Azure AD Object ID',
  `last_name` varchar(50) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT '姓',
  `first_name` varchar(50) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT '名',
  `last_name_kana` varchar(50) COLLATE utf8mb4_ja_0900_as_cs_ks DEFAULT NULL COMMENT '姓（カナ）',
  `first_name_kana` varchar(50) COLLATE utf8mb4_ja_0900_as_cs_ks DEFAULT NULL COMMENT '名（カナ）',
  `employment_type` enum('REGULAR','CONTRACT','PARTTIME','TEMP','DISPATCH') COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL DEFAULT 'REGULAR' COMMENT '雇用区分',
  `status` enum('ACTIVE','LEAVE','INACTIVE','RETIRED') COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL DEFAULT 'ACTIVE' COMMENT '在籍ステータス',
  `email` varchar(150) COLLATE utf8mb4_ja_0900_as_cs_ks NOT NULL COMMENT '社用メールアドレス',
  `phone_number` varchar(20) COLLATE utf8mb4_ja_0900_as_cs_ks DEFAULT NULL COMMENT '連絡先電話番号',
  `valid_from` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '有効開始日時',
  `valid_to` datetime NOT NULL DEFAULT '9999-12-31 23:59:59' COMMENT '有効終了日時',
  `deleted_at` datetime DEFAULT NULL COMMENT '論理削除日時',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登録日時',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  `version` int unsigned NOT NULL DEFAULT '1' COMMENT 'バージョン',
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `company_id` (`company_id`,`emp_code`,`deleted_at`),
  KEY `org_id` (`org_id`),
  KEY `position_id` (`position_id`),
  CONSTRAINT `m_employee_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `m_company` (`company_id`),
  CONSTRAINT `m_employee_ibfk_2` FOREIGN KEY (`org_id`) REFERENCES `m_organization` (`org_id`),
  CONSTRAINT `m_employee_ibfk_3` FOREIGN KEY (`position_id`) REFERENCES `m_position` (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=[Redacted by tbls] DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ja_0900_as_cs_ks COMMENT='従業員マスタ'
```

</details>

## カラム一覧

| #  | 名前                 | タイプ                                                     | デフォルト値              | Nullable | Extra Definition                              | 子テーブル                                                                                                                                       | 親テーブル                               | コメント               |
| -- | ------------------ | ------------------------------------------------------- | ------------------- | -------- | --------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------- | ------------------ |
| 1  | emp_id             | bigint unsigned                                         |                     | false    | auto_increment                                | [m_employee_account](m_employee_account.md) [m_employee_delegate](m_employee_delegate.md) [m_employee_preference](m_employee_preference.md) |                                     | 従業員ID              |
| 2  | company_id         | bigint unsigned                                         |                     | false    |                                               |                                                                                                                                             | [m_company](m_company.md)           | 会社ID               |
| 3  | org_id             | bigint unsigned                                         |                     | false    |                                               |                                                                                                                                             | [m_organization](m_organization.md) | 所属組織ID             |
| 4  | position_id        | bigint unsigned                                         |                     | true     |                                               |                                                                                                                                             | [m_position](m_position.md)         | 役職ID               |
| 5  | emp_code           | varchar(20)                                             |                     | false    |                                               |                                                                                                                                             |                                     | 社員番号               |
| 6  | azure_ad_object_id | char(36)                                                |                     | true     |                                               |                                                                                                                                             |                                     | Azure AD Object ID |
| 7  | last_name          | varchar(50)                                             |                     | false    |                                               |                                                                                                                                             |                                     | 姓                  |
| 8  | first_name         | varchar(50)                                             |                     | false    |                                               |                                                                                                                                             |                                     | 名                  |
| 9  | last_name_kana     | varchar(50)                                             |                     | true     |                                               |                                                                                                                                             |                                     | 姓（カナ）              |
| 10 | first_name_kana    | varchar(50)                                             |                     | true     |                                               |                                                                                                                                             |                                     | 名（カナ）              |
| 11 | employment_type    | enum('REGULAR','CONTRACT','PARTTIME','TEMP','DISPATCH') | REGULAR             | false    |                                               |                                                                                                                                             |                                     | 雇用区分               |
| 12 | status             | enum('ACTIVE','LEAVE','INACTIVE','RETIRED')             | ACTIVE              | false    |                                               |                                                                                                                                             |                                     | 在籍ステータス            |
| 13 | email              | varchar(150)                                            |                     | false    |                                               |                                                                                                                                             |                                     | 社用メールアドレス          |
| 14 | phone_number       | varchar(20)                                             |                     | true     |                                               |                                                                                                                                             |                                     | 連絡先電話番号            |
| 15 | valid_from         | datetime                                                | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED                             |                                                                                                                                             |                                     | 有効開始日時             |
| 16 | valid_to           | datetime                                                | 9999-12-31 23:59:59 | false    |                                               |                                                                                                                                             |                                     | 有効終了日時             |
| 17 | deleted_at         | datetime                                                |                     | true     |                                               |                                                                                                                                             |                                     | 論理削除日時             |
| 18 | created_at         | datetime                                                | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED                             |                                                                                                                                             |                                     | 登録日時               |
| 19 | updated_at         | datetime                                                | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |                                                                                                                                             |                                     | 更新日時               |
| 20 | version            | int unsigned                                            | 1                   | false    |                                               |                                                                                                                                             |                                     | バージョン              |

## 制約一覧

| # | 名前                | タイプ         | 定義                                                            |
| - | ----------------- | ----------- | ------------------------------------------------------------- |
| 1 | company_id        | UNIQUE      | UNIQUE KEY company_id (company_id, emp_code, deleted_at)      |
| 2 | m_employee_ibfk_1 | FOREIGN KEY | FOREIGN KEY (company_id) REFERENCES m_company (company_id)    |
| 3 | m_employee_ibfk_2 | FOREIGN KEY | FOREIGN KEY (org_id) REFERENCES m_organization (org_id)       |
| 4 | m_employee_ibfk_3 | FOREIGN KEY | FOREIGN KEY (position_id) REFERENCES m_position (position_id) |
| 5 | PRIMARY           | PRIMARY KEY | PRIMARY KEY (emp_id)                                          |

## INDEX一覧

| # | 名前          | 定義                                                                   |
| - | ----------- | -------------------------------------------------------------------- |
| 1 | org_id      | KEY org_id (org_id) USING BTREE                                      |
| 2 | position_id | KEY position_id (position_id) USING BTREE                            |
| 3 | PRIMARY     | PRIMARY KEY (emp_id) USING BTREE                                     |
| 4 | company_id  | UNIQUE KEY company_id (company_id, emp_code, deleted_at) USING BTREE |

## ER図

![er](m_employee.svg)

---

> Generated by [tbls](https://github.com/k1LoW/tbls)
