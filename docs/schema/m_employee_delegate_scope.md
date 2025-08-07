# m_employee_delegate_scope

## 概要

代理範囲マスタ

<details>
<summary><strong>テーブル定義</strong></summary>

```sql
CREATE TABLE `m_employee_delegate_scope` (
  `scope_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '代理範囲ID',
  `delegate_seq` bigint unsigned NOT NULL COMMENT '代理設定ID',
  `wf_key` varchar(64) COLLATE utf8mb4_ja_0900_as_cs_ks DEFAULT NULL COMMENT '対象WFキー(NULL=全)',
  `wf_step_no` smallint DEFAULT NULL COMMENT 'ステップ番号(NULL=全)',
  `perm_code` varchar(50) COLLATE utf8mb4_ja_0900_as_cs_ks DEFAULT NULL COMMENT '追加パーミッション(NULL=無指定)',
  `valid_from` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '有効開始日時',
  `valid_to` datetime NOT NULL DEFAULT '9999-12-31 23:59:59' COMMENT '有効終了日時',
  `deleted_at` datetime DEFAULT NULL COMMENT '論理削除',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登録日時',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  `version` int unsigned NOT NULL DEFAULT '1' COMMENT 'バージョン',
  PRIMARY KEY (`scope_id`),
  UNIQUE KEY `uq_scope_unique` (`delegate_seq`,`wf_key`,`wf_step_no`,`perm_code`),
  CONSTRAINT `fk_scope_parent` FOREIGN KEY (`delegate_seq`) REFERENCES `m_employee_delegate` (`delegate_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ja_0900_as_cs_ks COMMENT='代理範囲マスタ'
```

</details>

## カラム一覧

| #  | 名前           | タイプ             | デフォルト値              | Nullable | Extra Definition                              | 子テーブル      | 親テーブル                                         | コメント                            |
| -- | ------------ | --------------- | ------------------- | -------- | --------------------------------------------- | ---------- | --------------------------------------------- | ------------------------------- |
| 1  | scope_id     | bigint unsigned |                     | false    | auto_increment                                |            |                                               | 代理範囲ID                          |
| 2  | delegate_seq | bigint unsigned |                     | false    |                                               |            | [m_employee_delegate](m_employee_delegate.md) | 代理設定ID                          |
| 3  | wf_key       | varchar(64)     |                     | true     |                                               |            |                                               | 対象WFキー(NULL=全)                  |
| 4  | wf_step_no   | smallint        |                     | true     |                                               |            |                                               | ステップ番号(NULL=全)                  |
| 5  | perm_code    | varchar(50)     |                     | true     |                                               |            |                                               | 追加パーミッション(NULL=無指定)             |
| 6  | valid_from   | datetime        | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED                             |            |                                               | 有効開始日時                          |
| 7  | valid_to     | datetime        | 9999-12-31 23:59:59 | false    |                                               |            |                                               | 有効終了日時                          |
| 8  | deleted_at   | datetime        |                     | true     |                                               |            |                                               | 論理削除                            |
| 9  | created_at   | datetime        | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED                             |            |                                               | 登録日時                            |
| 10 | updated_at   | datetime        | CURRENT_TIMESTAMP   | false    | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |            |                                               | 更新日時                            |
| 11 | version      | int unsigned    | 1                   | false    |                                               |            |                                               | バージョン                           |

## 制約一覧

| # | 名前              | タイプ         | 定義                                                                       |
| - | --------------- | ----------- | ------------------------------------------------------------------------ |
| 1 | fk_scope_parent | FOREIGN KEY | FOREIGN KEY (delegate_seq) REFERENCES m_employee_delegate (delegate_seq) |
| 2 | PRIMARY         | PRIMARY KEY | PRIMARY KEY (scope_id)                                                   |
| 3 | uq_scope_unique | UNIQUE      | UNIQUE KEY uq_scope_unique (delegate_seq, wf_key, wf_step_no, perm_code) |

## INDEX一覧

| # | 名前              | 定義                                                                                   |
| - | --------------- | ------------------------------------------------------------------------------------ |
| 1 | PRIMARY         | PRIMARY KEY (scope_id) USING BTREE                                                   |
| 2 | uq_scope_unique | UNIQUE KEY uq_scope_unique (delegate_seq, wf_key, wf_step_no, perm_code) USING BTREE |

## ER図

![er](m_employee_delegate_scope.svg)

---

> Generated by [tbls](https://github.com/k1LoW/tbls)
