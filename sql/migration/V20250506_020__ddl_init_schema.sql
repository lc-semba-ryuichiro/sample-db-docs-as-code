CREATE TABLE m_company (
  company_id BIGINT UNSIGNED not NULL auto_increment comment '会社ID',
  company_code VARCHAR(20) not NULL comment '会社コード',
  company_name VARCHAR(100) not NULL comment '会社名',
  legal_name VARCHAR(200) NULL comment '登記上名称',
  parent_company_id BIGINT UNSIGNED NULL comment '親会社ID（NULL=持株）',
  country_code CHAR(2) not NULL default 'JP' comment '国コード (ISO-3166)',
  postal_code VARCHAR(12) not NULL comment '郵便番号',
  address_line1 VARCHAR(100) not NULL comment '住所1',
  address_line2 VARCHAR(100) comment '住所2',
  valid_from DATETIME not NULL default current_timestamp comment '有効開始日時',
  valid_to DATETIME not NULL default '9999-12-31 23:59:59' comment '有効終了日時',
  deleted_at DATETIME NULL comment '論理削除日時',
  created_at DATETIME not NULL default current_timestamp comment '登録日時',
  updated_at DATETIME not NULL default current_timestamp ON UPDATE current_timestamp comment '更新日時',
  version INT UNSIGNED not NULL default 1 comment 'バージョン',
  PRIMARY KEY (company_id),
  UNIQUE KEY (company_code, deleted_at),
  CONSTRAINT FOREIGN KEY (parent_company_id) REFERENCES m_company (company_id)
) comment = '会社マスタ';

CREATE TABLE m_organization (
  org_id BIGINT UNSIGNED not NULL auto_increment comment '組織ID',
  company_id BIGINT UNSIGNED not NULL comment '会社ID',
  parent_org_id BIGINT UNSIGNED NULL comment '上位組織ID',
  org_code VARCHAR(20) not NULL comment '組織コード',
  org_name VARCHAR(100) not NULL comment '組織名称',
  valid_from DATETIME not NULL default current_timestamp comment '有効開始日時',
  valid_to DATETIME not NULL default '9999-12-31 23:59:59' comment '有効終了日時',
  deleted_at DATETIME NULL comment '論理削除日時',
  created_at DATETIME not NULL default current_timestamp comment '登録日時',
  updated_at DATETIME not NULL default current_timestamp ON UPDATE current_timestamp comment '更新日時',
  version INT UNSIGNED not NULL default 1 comment 'バージョン',
  PRIMARY KEY (org_id),
  CONSTRAINT FOREIGN KEY (company_id) REFERENCES m_company (company_id),
  CONSTRAINT FOREIGN KEY (parent_org_id) REFERENCES m_organization (org_id)
) comment = '組織マスタ';

CREATE TABLE m_position (
  position_id BIGINT UNSIGNED not NULL auto_increment comment '役職ID',
  parent_position_id BIGINT UNSIGNED NULL comment '上位役職ID',
  company_id BIGINT UNSIGNED not NULL comment '会社ID',
  position_name VARCHAR(100) not NULL comment '役職名称',
  grade_level SMALLINT not NULL comment '等級・序列（数値が小さいほど上位）',
  is_managerial TINYINT(1) not NULL default 0 comment '管理職フラグ',
  valid_from DATETIME not NULL default current_timestamp comment '有効開始日時',
  valid_to DATETIME not NULL default '9999-12-31 23:59:59' comment '有効終了日時',
  deleted_at DATETIME NULL comment '論理削除日時',
  created_at DATETIME not NULL default current_timestamp comment '登録日時',
  updated_at DATETIME not NULL default current_timestamp ON UPDATE current_timestamp comment '更新日時',
  version INT UNSIGNED not NULL default 1 comment 'バージョン',
  PRIMARY KEY (position_id),
  UNIQUE KEY (company_id, position_name, deleted_at),
  KEY (company_id, grade_level),
  CONSTRAINT FOREIGN KEY (company_id) REFERENCES m_company (company_id),
  CONSTRAINT fk_position_parent FOREIGN KEY (parent_position_id) REFERENCES m_position (position_id)
) comment = '役職マスタ';

CREATE TABLE m_role (
  role_id BIGINT UNSIGNED not NULL auto_increment comment 'ロールID（PK）',
  company_id BIGINT UNSIGNED NULL comment '会社ID (NULL = 全社共通)',
  role_code VARCHAR(30) not NULL comment 'ロールコード',
  role_name VARCHAR(100) not NULL comment 'ロール名称',
  role_desc VARCHAR(255) NULL comment 'ロール説明',
  is_system_role TINYINT(1) not NULL default 0 comment 'システムロール (1=システム)',
  valid_from DATETIME not NULL default current_timestamp comment '有効開始日時',
  valid_to DATETIME not NULL default '9999-12-31 23:59:59' comment '有効終了日時',
  deleted_at DATETIME NULL comment '論理削除日時',
  created_at DATETIME not NULL default current_timestamp comment '登録日時',
  updated_at DATETIME not NULL default current_timestamp ON UPDATE current_timestamp comment '更新日時',
  version INT UNSIGNED not NULL default 1 comment 'バージョン',
  PRIMARY KEY (role_id),
  UNIQUE KEY (company_id, role_code, deleted_at),
  KEY (is_system_role),
  CONSTRAINT FOREIGN KEY (company_id) REFERENCES m_company (company_id)
) comment = 'ロールマスタ';

CREATE TABLE m_permission (
  perm_id BIGINT UNSIGNED not NULL auto_increment comment 'パーミッションID',
  company_id BIGINT UNSIGNED NULL comment '会社ID (NULL = 全社共通)',
  perm_code VARCHAR(50) not NULL comment '権限コード',
  perm_name VARCHAR(100) not NULL comment '権限名称',
  perm_desc VARCHAR(255) NULL comment '説明',
  perm_group VARCHAR(50) NULL comment '機能グループ',
  valid_from DATETIME not NULL default current_timestamp comment '有効開始日時',
  valid_to DATETIME not NULL default '9999-12-31 23:59:59' comment '有効終了日時',
  deleted_at DATETIME NULL comment '論理削除日時',
  created_at DATETIME not NULL default current_timestamp comment '登録日時',
  updated_at DATETIME not NULL default current_timestamp ON UPDATE current_timestamp comment '更新日時',
  version INT UNSIGNED not NULL default 1 comment 'バージョン',
  PRIMARY KEY (perm_id),
  UNIQUE KEY (company_id, perm_code, deleted_at),
  KEY (perm_group),
  CONSTRAINT FOREIGN KEY (company_id) REFERENCES m_company (company_id)
) comment = 'パーミッションマスタ';

CREATE TABLE m_role_permission (
  role_id BIGINT UNSIGNED not NULL comment 'ロールID',
  perm_id BIGINT UNSIGNED not NULL comment 'パーミッションID',
  valid_from DATETIME not NULL default current_timestamp comment '付与開始日時',
  valid_to DATETIME not NULL default '9999-12-31 23:59:59' comment '付与終了日時',
  deleted_at DATETIME NULL comment '論理削除日時',
  created_at DATETIME not NULL default current_timestamp comment '登録日時',
  updated_at DATETIME not NULL default current_timestamp ON UPDATE current_timestamp comment '更新日時',
  UNIQUE KEY (role_id, perm_id, deleted_at),
  KEY (role_id, valid_from, valid_to),
  CONSTRAINT FOREIGN KEY (role_id) REFERENCES m_role (role_id),
  CONSTRAINT FOREIGN KEY (perm_id) REFERENCES m_permission (perm_id)
) comment = 'ロールパーミッションマスタ';

CREATE TABLE m_employee (
  emp_id BIGINT UNSIGNED not NULL auto_increment comment '従業員ID',
  company_id BIGINT UNSIGNED not NULL comment '会社ID',
  org_id BIGINT UNSIGNED not NULL comment '所属組織ID',
  position_id BIGINT UNSIGNED NULL comment '役職ID',
  emp_code VARCHAR(20) not NULL comment '社員番号',
  azure_ad_object_id CHAR(36) NULL comment 'Azure AD Object ID',
  last_name VARCHAR(50) not NULL comment '姓',
  first_name VARCHAR(50) not NULL comment '名',
  last_name_kana VARCHAR(50) NULL comment '姓（カナ）',
  first_name_kana VARCHAR(50) NULL comment '名（カナ）',
  employment_type ENUM('REGULAR', 'CONTRACT', 'PARTTIME', 'TEMP', 'DISPATCH') not NULL default 'REGULAR' comment '雇用区分',
  status ENUM('ACTIVE', 'LEAVE', 'INACTIVE', 'RETIRED') not NULL default 'ACTIVE' comment '在籍ステータス',
  email VARCHAR(150) not NULL comment '社用メールアドレス',
  phone_number VARCHAR(20) NULL comment '連絡先電話番号',
  valid_from DATETIME not NULL default current_timestamp comment '有効開始日時',
  valid_to DATETIME not NULL default '9999-12-31 23:59:59' comment '有効終了日時',
  deleted_at DATETIME NULL comment '論理削除日時',
  created_at DATETIME not NULL default current_timestamp comment '登録日時',
  updated_at DATETIME not NULL default current_timestamp ON UPDATE current_timestamp comment '更新日時',
  version INT UNSIGNED not NULL default 1 comment 'バージョン',
  PRIMARY KEY (emp_id),
  UNIQUE KEY (company_id, emp_code, deleted_at),
  KEY (org_id),
  KEY (position_id),
  CONSTRAINT FOREIGN KEY (company_id) REFERENCES m_company (company_id),
  CONSTRAINT FOREIGN KEY (org_id) REFERENCES m_organization (org_id),
  CONSTRAINT FOREIGN KEY (position_id) REFERENCES m_position (position_id)
) comment = '従業員マスタ';

CREATE TABLE m_employee_delegate (
  delegate_seq BIGINT UNSIGNED not NULL auto_increment comment '代理シーケンスPK',
  emp_id BIGINT UNSIGNED not NULL comment '本人',
  delegate_id BIGINT UNSIGNED not NULL comment '代理人',
  mode ENUM('ALL', 'LIMITED') not NULL default 'ALL' comment 'ALL=全権委任, LIMITED=範囲指定',
  valid_from DATETIME not NULL default current_timestamp comment '有効開始日時',
  valid_to DATETIME not NULL default '9999-12-31 23:59:59' comment '有効終了日時',
  deleted_at DATETIME NULL comment '論理削除日時',
  created_at DATETIME not NULL default current_timestamp comment '登録日時',
  updated_at DATETIME not NULL default current_timestamp ON UPDATE current_timestamp comment '更新日時',
  version INT UNSIGNED not NULL default 1 comment 'バージョン',
  PRIMARY KEY (delegate_seq),
  UNIQUE KEY (emp_id, delegate_id, valid_from),
  CONSTRAINT FOREIGN KEY (emp_id) REFERENCES m_employee (emp_id),
  CONSTRAINT FOREIGN KEY (delegate_id) REFERENCES m_employee (emp_id)
) comment = '代理設定マスタ';

CREATE TABLE m_employee_delegate_scope (
  scope_id BIGINT UNSIGNED not NULL auto_increment comment '代理範囲ID',
  delegate_seq BIGINT UNSIGNED not NULL comment '代理設定ID',
  wf_key VARCHAR(64) NULL comment '対象WFキー(NULL=全)',
  wf_step_no SMALLINT NULL comment 'ステップ番号(NULL=全)',
  perm_code VARCHAR(50) NULL comment '追加パーミッション(NULL=無指定)',
  valid_from DATETIME not NULL default current_timestamp comment '有効開始日時',
  valid_to DATETIME not NULL default '9999-12-31 23:59:59' comment '有効終了日時',
  deleted_at DATETIME NULL comment '論理削除',
  created_at DATETIME not NULL default current_timestamp comment '登録日時',
  updated_at DATETIME not NULL default current_timestamp ON UPDATE current_timestamp comment '更新日時',
  version INT UNSIGNED not NULL default 1 comment 'バージョン',
  PRIMARY KEY (scope_id),
  UNIQUE KEY uq_scope_unique (delegate_seq, wf_key, wf_step_no, perm_code),
  CONSTRAINT fk_scope_parent FOREIGN KEY (delegate_seq) REFERENCES m_employee_delegate (delegate_seq)
) comment = '代理範囲マスタ';

CREATE TABLE m_employee_account (
  account_id BIGINT UNSIGNED not NULL auto_increment comment '口座ID',
  emp_id BIGINT UNSIGNED not NULL comment '従業員ID',
  bank_code CHAR(4) not NULL comment '銀行コード',
  branch_code CHAR(3) not NULL comment '支店コード',
  account_type ENUM('FUTSU', 'TOUZA', 'SAVINGS', 'OTHER') not NULL default 'FUTSU' comment '口座種別',
  account_no CHAR(7) not NULL comment '口座番号 (7桁)',
  account_name VARCHAR(100) not NULL comment '口座名義 (カナ推奨)',
  currency_code CHAR(3) not NULL default 'JPY' comment '通貨 (ISO 4217)',
  purpose ENUM('EXPENSE', 'PAYROLL', 'BONUS', 'OTHER') not NULL default 'EXPENSE' comment '用途区分',
  priority TINYINT UNSIGNED not NULL default 1 comment '同一用途内での優先順位 (1=最優先)',
  valid_from DATETIME not NULL default current_timestamp comment '有効開始日時',
  valid_to DATETIME not NULL default '9999-12-31 23:59:59' comment '有効終了日時',
  deleted_at DATETIME NULL comment '論理削除',
  created_at DATETIME not NULL default current_timestamp comment '登録日時',
  updated_at DATETIME not NULL default current_timestamp ON UPDATE current_timestamp comment '更新日時',
  version INT UNSIGNED not NULL default 1 comment 'バージョン',
  PRIMARY KEY (account_id),
  UNIQUE KEY (emp_id, purpose, priority, deleted_at),
  KEY (emp_id, purpose, priority),
  KEY (bank_code, branch_code),
  CONSTRAINT FOREIGN KEY (emp_id) REFERENCES m_employee (emp_id)
) comment = '従業員振込口座マスタ';

CREATE TABLE m_employee_preference (
  emp_id BIGINT UNSIGNED not NULL comment '従業員ID',
  locale CHAR(5) not NULL default 'ja-JP' comment '言語・ロケール',
  timezone VARCHAR(50) not NULL default 'Asia/Tokyo' comment 'タイムゾーン',
  theme ENUM('LIGHT', 'DARK') not NULL default 'LIGHT' comment 'UI テーマ',
  date_format ENUM('YYYY/MM/DD', 'DD/MM/YYYY', 'MM/DD/YYYY') not NULL default 'YYYY/MM/DD' comment '日付フォーマット',
  notify_type ENUM('EMAIL', 'SLACK', 'NONE') not NULL default 'EMAIL' comment '通知方法',
  default_cost_center VARCHAR(20) NULL comment 'デフォルト原価センタ',
  default_cc_email VARCHAR(150) NULL comment '申請時の CC メール',
  valid_from DATETIME not NULL default current_timestamp comment '有効開始日時',
  valid_to DATETIME not NULL default '9999-12-31 23:59:59' comment '有効終了日時',
  deleted_at DATETIME NULL comment '論理削除',
  created_at DATETIME not NULL default current_timestamp comment '登録日時',
  updated_at DATETIME not NULL default current_timestamp ON UPDATE current_timestamp comment '更新日時',
  version INT UNSIGNED not NULL default 1 comment 'バージョン',
  PRIMARY KEY (emp_id),
  KEY (locale),
  CONSTRAINT FOREIGN KEY (emp_id) REFERENCES m_employee (emp_id)
) comment = '従業員個人設定マスタ';
