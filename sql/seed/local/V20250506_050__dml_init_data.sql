INSERT INTO
  m_company (company_code, company_name, legal_name, parent_company_id, country_code, postal_code, address_line1)
VALUES
  ('HD', 'Example Holdings', 'Example Holdings Co., Ltd.', NULL, 'JP', '100-0000', '東京都千代田区丸の内1-1-1'),
  ('SUB_MANU', 'Example Manufacturing', 'Example Manufacturing Co., Ltd.', 1, 'JP', '100-0001', '東京都中央区'),
  ('SUB_SERV', 'Example Services', 'Example Services Co., Ltd.', 1, 'JP', '100-0001', '東京都港区'),
  ('SUB_TECH', 'Example Technology', 'Example Technology Co., Ltd.', 1, 'JP', '100-0001', '東京都中央区'),
  ('SUB_INTL', 'Example International', 'Example International Inc.', 1, 'US', '100-0001', '東京都北区'),
  ('SUB_FIN', 'Example Finance', 'Example Finance Co., Ltd.', 1, 'JP', '100-0001', '東京都'),
  ('SUB_SALES', 'Example Sales', 'Example Sales Co., Ltd.', 1, 'JP', '100-0001', '東京都'),
  ('SUB_RND', 'Example R&D', 'Example Research & Dev. Co., Ltd.', 1, 'JP', '100-0001', '東京都'),
  ('SUB_SOL', 'Example Solutions', 'Example Solutions Co., Ltd.', 1, 'JP', '100-0001', '東京都'),
  ('SUB_LOGI', 'Example Logistics', 'Example Logistics Co., Ltd.', 1, 'JP', '100-0001', '東京都');

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name, created_at, updated_at)
VALUES
  (1001, 1, NULL, 'HON', '本社', NOW(), NOW());

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name)
VALUES
  (1100, 1, 1001, 'KMH', '経営管理本部');

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name)
VALUES
  (1110, 1, 1100, 'ZAI', '財務部'),
  (1111, 1, 1110, 'KEI', '経理課');

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name)
VALUES
  (1120, 1, 1100, 'JIN', '人事部');

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name)
VALUES
  (2001, 2, NULL, 'HON', '本社'),
  (2100, 2, 2001, 'SEI', '生産本部'),
  (2110, 2, 2100, 'KOU1', '第一工場'),
  (2120, 2, 2100, 'KOU2', '第二工場');

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name)
VALUES
  (3001, 3, NULL, 'HON', '本社'),
  (3100, 3, 3001, 'UNYO', '運用部'),
  (3200, 3, 3001, 'CS', 'カスタマーサポート部'),
  (3210, 3, 3200, 'CSE', '法人CSチーム'),
  (3220, 3, 3200, 'CSS', '中小企業CSチーム');

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name)
VALUES
  (4001, 4, NULL, 'HON', '本社'),
  (4100, 4, 4001, 'DEV', '開発本部'),
  (4110, 4, 4100, 'CLD', 'クラウド開発部'),
  (4120, 4, 4100, 'AI', 'AI開発部'),
  (4200, 4, 4001, 'OPS', '技術運用本部'),
  (4210, 4, 4200, 'INF', 'インフラ運用部'),
  (4220, 4, 4200, 'SRE', 'SRE部');

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name)
VALUES
  (5001, 5, NULL, 'HON', '本社'),
  (5100, 5, 5001, 'OVS', '海外事業本部'),
  (5110, 5, 5100, 'NAM', '北米事業部'),
  (5120, 5, 5100, 'EUR', '欧州事業部'),
  (5130, 5, 5100, 'APAC', 'アジア事業部');

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name)
VALUES
  (6001, 6, NULL, 'HON', '本社'),
  (6100, 6, 6001, 'RISK', 'リスク管理本部'),
  (6110, 6, 6100, 'INV', '投資銀行部'),
  (6120, 6, 6100, 'AM', '資産運用部'),
  (6130, 6, 6001, 'CORP', '法人営業部');

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name)
VALUES
  (7001, 7, NULL, 'HON', '本社'),
  (7100, 7, 7001, 'SAL', '営業本部'),
  (7110, 7, 7100, 'SAL1', '第一営業部'),
  (7120, 7, 7100, 'SAL2', '第二営業部'),
  (7130, 7, 7100, 'SOL', 'ソリューション営業部');

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name)
VALUES
  (8001, 8, NULL, 'HON', '本社'),
  (8100, 8, 8001, 'RD', '研究開発本部'),
  (8110, 8, 8100, 'MAT', '材料研究部'),
  (8120, 8, 8100, 'DEV', 'デバイス開発部'),
  (8130, 8, 8100, 'BAS', '基礎研究所');

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name)
VALUES
  (9001, 9, NULL, 'HON', '本社'),
  (9100, 9, 9001, 'CONS', 'コンサルティング本部'),
  (9110, 9, 9100, 'STR', 'ストラテジー部'),
  (9120, 9, 9100, 'ITC', 'ITコンサル部'),
  (9130, 9, 9100, 'DX', 'DX推進部');

INSERT INTO
  m_organization (org_id, company_id, parent_org_id, org_code, org_name)
VALUES
  (10001, 10, NULL, 'HON', '本社'),
  (10100, 10, 10001, 'LOG', '物流本部'),
  (10110, 10, 10100, 'WH', '倉庫運営部'),
  (10120, 10, 10100, 'DSP', '配送計画部'),
  (10130, 10, 10100, 'INT', '国際物流部');

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (1, '一般社員', 9, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (1, '主任', 8, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (1, '係長', 7, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (1, '課長', 6, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (1, '部長', 5, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (1, '本部長', 4, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (1, '取締役', 3, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (1, '社長', 2, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (1, '会長', 1, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (2, '一般社員', 9, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (2, '主任', 8, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (2, '係長', 7, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (2, '課長', 6, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (2, '部長', 5, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (2, '本部長', 4, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (2, '取締役', 3, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (2, '社長', 2, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (2, '会長', 1, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (3, '一般社員', 9, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (3, '主任', 8, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (3, '係長', 7, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (3, '課長', 6, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (3, '部長', 5, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (3, '本部長', 4, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (3, '取締役', 3, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (3, '社長', 2, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (3, '会長', 1, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (4, '一般社員', 9, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (4, '主任', 8, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (4, '係長', 7, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (4, '課長', 6, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (4, '部長', 5, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (4, '本部長', 4, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (4, '取締役', 3, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (4, '社長', 2, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (4, '会長', 1, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (5, '一般社員', 9, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (5, '主任', 8, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (5, '係長', 7, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (5, '課長', 6, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (5, '部長', 5, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (5, '本部長', 4, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (5, '取締役', 3, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (5, '社長', 2, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (5, '会長', 1, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (6, '一般社員', 9, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (6, '主任', 8, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (6, '係長', 7, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (6, '課長', 6, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (6, '部長', 5, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (6, '本部長', 4, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (6, '取締役', 3, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (6, '社長', 2, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (6, '会長', 1, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (7, '一般社員', 9, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (7, '主任', 8, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (7, '係長', 7, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (7, '課長', 6, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (7, '部長', 5, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (7, '本部長', 4, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (7, '取締役', 3, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (7, '社長', 2, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (7, '会長', 1, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (8, '一般社員', 9, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (8, '主任', 8, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (8, '係長', 7, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (8, '課長', 6, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (8, '部長', 5, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (8, '本部長', 4, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (8, '取締役', 3, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (8, '社長', 2, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (8, '会長', 1, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (9, '一般社員', 9, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (9, '主任', 8, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (9, '係長', 7, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (9, '課長', 6, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (9, '部長', 5, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (9, '本部長', 4, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (9, '取締役', 3, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (9, '社長', 2, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (9, '会長', 1, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (10, '一般社員', 9, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (10, '主任', 8, 0);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (10, '係長', 7, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (10, '課長', 6, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (10, '部長', 5, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (10, '本部長', 4, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (10, '取締役', 3, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (10, '社長', 2, 1);

INSERT INTO
  m_position (company_id, position_name, grade_level, is_managerial)
VALUES
  (10, '会長', 1, 1);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (NULL, 'SYS_ADMIN', 'システム管理者', '全機能フルアクセス', 1);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (NULL, 'AUDITOR', '監査ユーザー', '閲覧専用＋監査ログ参照', 1);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (1, 'APPROVER', '承認者', 'ワークフロー承認権限', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (1, 'FIN', '経理担当', '経費精算・台帳操作', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (1, 'HR', '人事担当', '人事系モジュール管理', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (1, 'MGR', 'マネージャー', '自部門の承認・レポート閲覧', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (1, 'EMP', '一般社員', '基本利用者', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (2, 'APPROVER', '承認者', 'ワークフロー承認権限', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (2, 'FIN', '経理担当', '経費精算・台帳操作', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (2, 'HR', '人事担当', '人事系モジュール管理', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (2, 'MGR', 'マネージャー', '自部門の承認・レポート閲覧', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (2, 'EMP', '一般社員', '基本利用者', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (3, 'APPROVER', '承認者', 'ワークフロー承認権限', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (3, 'FIN', '経理担当', '経費精算・台帳操作', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (3, 'HR', '人事担当', '人事系モジュール管理', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (3, 'MGR', 'マネージャー', '自部門の承認・レポート閲覧', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (3, 'EMP', '一般社員', '基本利用者', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (4, 'APPROVER', '承認者', 'ワークフロー承認権限', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (4, 'FIN', '経理担当', '経費精算・台帳操作', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (4, 'HR', '人事担当', '人事系モジュール管理', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (4, 'MGR', 'マネージャー', '自部門の承認・レポート閲覧', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (4, 'EMP', '一般社員', '基本利用者', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (5, 'APPROVER', '承認者', 'ワークフロー承認権限', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (5, 'FIN', '経理担当', '経費精算・台帳操作', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (5, 'HR', '人事担当', '人事系モジュール管理', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (5, 'MGR', 'マネージャー', '自部門の承認・レポート閲覧', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (5, 'EMP', '一般社員', '基本利用者', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (6, 'APPROVER', '承認者', 'ワークフロー承認権限', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (6, 'FIN', '経理担当', '経費精算・台帳操作', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (6, 'HR', '人事担当', '人事系モジュール管理', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (6, 'MGR', 'マネージャー', '自部門の承認・レポート閲覧', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (6, 'EMP', '一般社員', '基本利用者', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (7, 'APPROVER', '承認者', 'ワークフロー承認権限', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (7, 'FIN', '経理担当', '経費精算・台帳操作', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (7, 'HR', '人事担当', '人事系モジュール管理', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (7, 'MGR', 'マネージャー', '自部門の承認・レポート閲覧', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (7, 'EMP', '一般社員', '基本利用者', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (8, 'APPROVER', '承認者', 'ワークフロー承認権限', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (8, 'FIN', '経理担当', '経費精算・台帳操作', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (8, 'HR', '人事担当', '人事系モジュール管理', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (8, 'MGR', 'マネージャー', '自部門の承認・レポート閲覧', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (8, 'EMP', '一般社員', '基本利用者', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (9, 'APPROVER', '承認者', 'ワークフロー承認権限', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (9, 'FIN', '経理担当', '経費精算・台帳操作', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (9, 'HR', '人事担当', '人事系モジュール管理', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (9, 'MGR', 'マネージャー', '自部門の承認・レポート閲覧', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (9, 'EMP', '一般社員', '基本利用者', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (10, 'APPROVER', '承認者', 'ワークフロー承認権限', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (10, 'FIN', '経理担当', '経費精算・台帳操作', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (10, 'HR', '人事担当', '人事系モジュール管理', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (10, 'MGR', 'マネージャー', '自部門の承認・レポート閲覧', 0);

INSERT INTO
  m_role (company_id, role_code, role_name, role_desc, is_system_role)
VALUES
  (10, 'EMP', '一般社員', '基本利用者', 0);

INSERT INTO
  m_permission (company_id, perm_code, perm_name, perm_desc, perm_group)
VALUES
  /* ===== EXPENSE ===== */
  (NULL, 'EXP_VIEW', '経費閲覧', '自分の経費申請を閲覧', 'EXPENSE'),
  (NULL, 'EXP_CREATE', '経費申請', '経費を新規申請', 'EXPENSE'),
  (NULL, 'EXP_RECEIPT_UPLOAD', '領収書アップロード', '領収書画像をアップロード', 'EXPENSE'),
  (NULL, 'EXP_APPROVE', '経費承認', '部下の経費申請を承認', 'EXPENSE'),
  (NULL, 'EXP_SETTLE', '経費精算確定', '経理による経費精算確定', 'EXPENSE'),
  /* ===== WORKFLOW ===== */
  (NULL, 'WF_SUBMIT', 'ワークフロー申請', 'ワークフローを開始', 'WORKFLOW'),
  (NULL, 'WF_APPROVE', 'ワークフロー承認', '担当タスクを承認', 'WORKFLOW'),
  (NULL, 'WF_RECALL', 'ワークフロー差戻し', '差戻し・却下を実行', 'WORKFLOW'),
  (NULL, 'WF_VIEW_ALL', 'ワークフロー全件閲覧', '全てのワークフローを閲覧', 'WORKFLOW'),
  /* ===== HR ===== */
  (NULL, 'HR_VIEW_EMP', '社員情報閲覧', '社員基本情報を閲覧', 'HR'),
  (NULL, 'HR_EDIT_EMP', '社員情報更新', '社員情報を追加・編集', 'HR'),
  (NULL, 'HR_PAYROLL', '給与処理', '給与計算および支払処理', 'HR'),
  /* ===== FINANCE ===== */
  (NULL, 'FIN_LEDGER_VIEW', '総勘定元帳閲覧', '会計元帳を閲覧', 'FINANCE'),
  (NULL, 'FIN_LEDGER_EDIT', '総勘定元帳編集', '仕訳帳・元帳を編集', 'FINANCE'),
  (NULL, 'FIN_PAYMENT_EXEC', '支払実行', '銀行振込ファイル生成および送信', 'FINANCE'),
  /* ===== ADMIN ===== */
  (NULL, 'ADMIN_USER_MANAGE', 'ユーザー管理', 'ユーザー作成・無効化', 'ADMIN'),
  (NULL, 'ADMIN_ROLE_MANAGE', 'ロール管理', 'ロール作成・付与', 'ADMIN'),
  (NULL, 'ADMIN_PARAM_EDIT', 'システムパラメータ編集', 'システム全体設定を変更', 'ADMIN'),
  (NULL, 'AUDIT_LOG_VIEW', '監査ログ閲覧', '操作ログを閲覧', 'ADMIN'),
  /* ===== REPORT ===== */
  (NULL, 'REPORT_EXPORT', 'レポート出力', 'CSV/Excel レポートを出力', 'REPORT'),
  (NULL, 'REPORT_SCHEDULE', '定期レポート作成', '定期レポートをスケジュール', 'REPORT');

/* 1) SYS_ADMIN  → 全パーミッションを付与 */
INSERT INTO
  m_role_permission (role_id, perm_id)
SELECT
  r.role_id,
  p.perm_id
FROM
  m_role r
  CROSS JOIN m_permission p
WHERE
  r.role_code = 'SYS_ADMIN'
  AND r.company_id is null;

-- システムロール
/* 2) AUDITOR    → 閲覧系のみ */
INSERT INTO
  m_role_permission (role_id, perm_id)
SELECT
  r.role_id,
  p.perm_id
FROM
  m_role r
  JOIN m_permission p ON p.perm_code IN ('EXP_VIEW', 'WF_VIEW_ALL', 'REPORT_EXPORT', 'AUDIT_LOG_VIEW', 'FIN_LEDGER_VIEW')
WHERE
  r.role_code = 'AUDITOR'
  AND r.company_id is null;

/* 3) EMP        → 経費申請・WF 申請 */
INSERT INTO
  m_role_permission (role_id, perm_id)
SELECT
  r.role_id,
  p.perm_id
FROM
  m_role r
  JOIN m_permission p ON p.perm_code IN ('EXP_VIEW', 'EXP_CREATE', 'EXP_RECEIPT_UPLOAD', 'WF_SUBMIT')
WHERE
  r.role_code = 'EMP';

-- 10 社分一括
/* 4) MGR        → EMP + 承認・差戻し */
INSERT INTO
  m_role_permission (role_id, perm_id)
SELECT
  r.role_id,
  p.perm_id
FROM
  m_role r
  JOIN m_permission p ON p.perm_code IN ('EXP_VIEW', 'EXP_CREATE', 'EXP_RECEIPT_UPLOAD', 'WF_SUBMIT', 'EXP_APPROVE', 'WF_APPROVE', 'WF_RECALL')
WHERE
  r.role_code = 'MGR';

/* 5) APPROVER   → WF 承認系のみ */
INSERT INTO
  m_role_permission (role_id, perm_id)
SELECT
  r.role_id,
  p.perm_id
FROM
  m_role r
  JOIN m_permission p ON p.perm_code IN ('WF_APPROVE', 'WF_RECALL')
WHERE
  r.role_code = 'APPROVER';

/* 6) HR         → 人事系 */
INSERT INTO
  m_role_permission (role_id, perm_id)
SELECT
  r.role_id,
  p.perm_id
FROM
  m_role r
  JOIN m_permission p ON p.perm_code IN ('HR_VIEW_EMP', 'HR_EDIT_EMP', 'HR_PAYROLL')
WHERE
  r.role_code = 'HR';

/* 7) FIN        → 経理・会計系 */
INSERT INTO
  m_role_permission (role_id, perm_id)
SELECT
  r.role_id,
  p.perm_id
FROM
  m_role r
  JOIN m_permission p ON p.perm_code IN ('EXP_SETTLE', 'FIN_LEDGER_VIEW', 'FIN_LEDGER_EDIT', 'FIN_PAYMENT_EXEC')
WHERE
  r.role_code = 'FIN';

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    10,
    10001,
    90,
    'SUB_LOGI0001',
    '696303ff-2a39-11f0-9190-d2343eedb240',
    '会長10',
    '一郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '一郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    9,
    9001,
    81,
    'SUB_SOL0001',
    '69635011-2a39-11f0-9190-d2343eedb240',
    '会長9',
    '一郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '一郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    8,
    8001,
    72,
    'SUB_RND0001',
    '696354c0-2a39-11f0-9190-d2343eedb240',
    '会長8',
    '一郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '一郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    7,
    7001,
    63,
    'SUB_SALES0001',
    '69635782-2a39-11f0-9190-d2343eedb240',
    '会長7',
    '一郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '一郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    6,
    6001,
    54,
    'SUB_FIN0001',
    '69635a42-2a39-11f0-9190-d2343eedb240',
    '会長6',
    '一郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '一郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    5,
    5001,
    45,
    'SUB_INTL0001',
    '69635cdc-2a39-11f0-9190-d2343eedb240',
    '会長5',
    '一郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '一郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    4,
    4001,
    36,
    'SUB_TECH0001',
    '69635f96-2a39-11f0-9190-d2343eedb240',
    '会長4',
    '一郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '一郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    3,
    3001,
    27,
    'SUB_SERV0001',
    '69636247-2a39-11f0-9190-d2343eedb240',
    '会長3',
    '一郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '一郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    2,
    2001,
    18,
    'SUB_MANU0001',
    '6963654a-2a39-11f0-9190-d2343eedb240',
    '会長2',
    '一郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '一郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    1,
    1001,
    9,
    'HD0001',
    '696367c1-2a39-11f0-9190-d2343eedb240',
    '会長1',
    '一郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '一郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    10,
    10001,
    89,
    'SUB_LOGI0002',
    '69636ba4-2a39-11f0-9190-d2343eedb240',
    '社長10',
    '二郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '二郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    9,
    9001,
    80,
    'SUB_SOL0002',
    '69636e4f-2a39-11f0-9190-d2343eedb240',
    '社長9',
    '二郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '二郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    8,
    8001,
    71,
    'SUB_RND0002',
    '696370a6-2a39-11f0-9190-d2343eedb240',
    '社長8',
    '二郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '二郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    7,
    7001,
    62,
    'SUB_SALES0002',
    '69637305-2a39-11f0-9190-d2343eedb240',
    '社長7',
    '二郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '二郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    6,
    6001,
    53,
    'SUB_FIN0002',
    '69637544-2a39-11f0-9190-d2343eedb240',
    '社長6',
    '二郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '二郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    5,
    5001,
    44,
    'SUB_INTL0002',
    '696377a4-2a39-11f0-9190-d2343eedb240',
    '社長5',
    '二郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '二郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    4,
    4001,
    35,
    'SUB_TECH0002',
    '696379f8-2a39-11f0-9190-d2343eedb240',
    '社長4',
    '二郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '二郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    3,
    3001,
    26,
    'SUB_SERV0002',
    '69637c8e-2a39-11f0-9190-d2343eedb240',
    '社長3',
    '二郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '二郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    2,
    2001,
    17,
    'SUB_MANU0002',
    '69637ecd-2a39-11f0-9190-d2343eedb240',
    '社長2',
    '二郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '二郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    1,
    1001,
    8,
    'HD0002',
    '69638106-2a39-11f0-9190-d2343eedb240',
    '社長1',
    '二郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '二郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    10,
    10001,
    88,
    'SUB_LOGI0003',
    '6963836a-2a39-11f0-9190-d2343eedb240',
    '取締役10',
    '三郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '三郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    9,
    9001,
    79,
    'SUB_SOL0003',
    '696385b0-2a39-11f0-9190-d2343eedb240',
    '取締役9',
    '三郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '三郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    8,
    8001,
    70,
    'SUB_RND0003',
    '696387e9-2a39-11f0-9190-d2343eedb240',
    '取締役8',
    '三郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '三郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    7,
    7001,
    61,
    'SUB_SALES0003',
    '69638c3e-2a39-11f0-9190-d2343eedb240',
    '取締役7',
    '三郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '三郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    6,
    6001,
    52,
    'SUB_FIN0003',
    '696392ec-2a39-11f0-9190-d2343eedb240',
    '取締役6',
    '三郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '三郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    5,
    5001,
    43,
    'SUB_INTL0003',
    '69639751-2a39-11f0-9190-d2343eedb240',
    '取締役5',
    '三郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '三郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    4,
    4001,
    34,
    'SUB_TECH0003',
    '696399d2-2a39-11f0-9190-d2343eedb240',
    '取締役4',
    '三郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '三郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    3,
    3001,
    25,
    'SUB_SERV0003',
    '69639c6f-2a39-11f0-9190-d2343eedb240',
    '取締役3',
    '三郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '三郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    2,
    2001,
    16,
    'SUB_MANU0003',
    '69639f6a-2a39-11f0-9190-d2343eedb240',
    '取締役2',
    '三郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '三郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    1,
    1001,
    7,
    'HD0003',
    '6963a14e-2a39-11f0-9190-d2343eedb240',
    '取締役1',
    '三郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '三郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    10,
    10001,
    87,
    'SUB_LOGI0004',
    '6963a3a1-2a39-11f0-9190-d2343eedb240',
    '本部長10',
    '四郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '四郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    9,
    9001,
    78,
    'SUB_SOL0004',
    '6963a64d-2a39-11f0-9190-d2343eedb240',
    '本部長9',
    '四郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '四郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    8,
    8001,
    69,
    'SUB_RND0004',
    '6963a853-2a39-11f0-9190-d2343eedb240',
    '本部長8',
    '四郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '四郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    7,
    7001,
    60,
    'SUB_SALES0004',
    '6963aa22-2a39-11f0-9190-d2343eedb240',
    '本部長7',
    '四郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '四郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    6,
    6001,
    51,
    'SUB_FIN0004',
    '6963abfb-2a39-11f0-9190-d2343eedb240',
    '本部長6',
    '四郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '四郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    5,
    5001,
    42,
    'SUB_INTL0004',
    '6963ae29-2a39-11f0-9190-d2343eedb240',
    '本部長5',
    '四郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '四郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    4,
    4001,
    33,
    'SUB_TECH0004',
    '6963b18a-2a39-11f0-9190-d2343eedb240',
    '本部長4',
    '四郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '四郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    3,
    3001,
    24,
    'SUB_SERV0004',
    '6963b37d-2a39-11f0-9190-d2343eedb240',
    '本部長3',
    '四郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '四郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    2,
    2001,
    15,
    'SUB_MANU0004',
    '6963b572-2a39-11f0-9190-d2343eedb240',
    '本部長2',
    '四郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '四郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    1,
    1001,
    6,
    'HD0004',
    '6963b7f5-2a39-11f0-9190-d2343eedb240',
    '本部長1',
    '四郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '四郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    10,
    10001,
    86,
    'SUB_LOGI0005',
    '6963b9f2-2a39-11f0-9190-d2343eedb240',
    '部長10',
    '五郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '五郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    9,
    9001,
    77,
    'SUB_SOL0005',
    '6963bbd2-2a39-11f0-9190-d2343eedb240',
    '部長9',
    '五郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '五郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    8,
    8001,
    68,
    'SUB_RND0005',
    '6963bde2-2a39-11f0-9190-d2343eedb240',
    '部長8',
    '五郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '五郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    7,
    7001,
    59,
    'SUB_SALES0005',
    '6963bfe8-2a39-11f0-9190-d2343eedb240',
    '部長7',
    '五郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '五郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    6,
    6001,
    50,
    'SUB_FIN0005',
    '6963c1d8-2a39-11f0-9190-d2343eedb240',
    '部長6',
    '五郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '五郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    5,
    5001,
    41,
    'SUB_INTL0005',
    '6963c447-2a39-11f0-9190-d2343eedb240',
    '部長5',
    '五郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '五郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    4,
    4001,
    32,
    'SUB_TECH0005',
    '6963c6a5-2a39-11f0-9190-d2343eedb240',
    '部長4',
    '五郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '五郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    3,
    3001,
    23,
    'SUB_SERV0005',
    '6963c8ea-2a39-11f0-9190-d2343eedb240',
    '部長3',
    '五郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '五郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    2,
    2001,
    14,
    'SUB_MANU0005',
    '6963cb3a-2a39-11f0-9190-d2343eedb240',
    '部長2',
    '五郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '五郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    1,
    1001,
    5,
    'HD0005',
    '6963cda2-2a39-11f0-9190-d2343eedb240',
    '部長1',
    '五郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '五郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    10,
    10001,
    85,
    'SUB_LOGI0006',
    '6963d01d-2a39-11f0-9190-d2343eedb240',
    '課長10',
    '六郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '六郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    9,
    9001,
    76,
    'SUB_SOL0006',
    '6963d29c-2a39-11f0-9190-d2343eedb240',
    '課長9',
    '六郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '六郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    8,
    8001,
    67,
    'SUB_RND0006',
    '6963d4f5-2a39-11f0-9190-d2343eedb240',
    '課長8',
    '六郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '六郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    7,
    7001,
    58,
    'SUB_SALES0006',
    '6963d7c1-2a39-11f0-9190-d2343eedb240',
    '課長7',
    '六郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '六郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    6,
    6001,
    49,
    'SUB_FIN0006',
    '6963da79-2a39-11f0-9190-d2343eedb240',
    '課長6',
    '六郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '六郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    5,
    5001,
    40,
    'SUB_INTL0006',
    '6963dd15-2a39-11f0-9190-d2343eedb240',
    '課長5',
    '六郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '六郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    4,
    4001,
    31,
    'SUB_TECH0006',
    '6963e0b1-2a39-11f0-9190-d2343eedb240',
    '課長4',
    '六郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '六郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    3,
    3001,
    22,
    'SUB_SERV0006',
    '6963e304-2a39-11f0-9190-d2343eedb240',
    '課長3',
    '六郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '六郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    2,
    2001,
    13,
    'SUB_MANU0006',
    '6963e71a-2a39-11f0-9190-d2343eedb240',
    '課長2',
    '六郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '六郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    1,
    1001,
    4,
    'HD0006',
    '6963e9c2-2a39-11f0-9190-d2343eedb240',
    '課長1',
    '六郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '六郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    10,
    10001,
    84,
    'SUB_LOGI0007',
    '6963ec67-2a39-11f0-9190-d2343eedb240',
    '係長10',
    '七郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '七郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    9,
    9001,
    75,
    'SUB_SOL0007',
    '6963eee2-2a39-11f0-9190-d2343eedb240',
    '係長9',
    '七郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '七郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    8,
    8001,
    66,
    'SUB_RND0007',
    '6963f3b0-2a39-11f0-9190-d2343eedb240',
    '係長8',
    '七郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '七郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    7,
    7001,
    57,
    'SUB_SALES0007',
    '6963f6b5-2a39-11f0-9190-d2343eedb240',
    '係長7',
    '七郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '七郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    6,
    6001,
    48,
    'SUB_FIN0007',
    '6963fa1a-2a39-11f0-9190-d2343eedb240',
    '係長6',
    '七郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '七郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    5,
    5001,
    39,
    'SUB_INTL0007',
    '6963fce1-2a39-11f0-9190-d2343eedb240',
    '係長5',
    '七郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '七郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    4,
    4001,
    30,
    'SUB_TECH0007',
    '6963ff3e-2a39-11f0-9190-d2343eedb240',
    '係長4',
    '七郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '七郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    3,
    3001,
    21,
    'SUB_SERV0007',
    '696401ba-2a39-11f0-9190-d2343eedb240',
    '係長3',
    '七郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '七郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    2,
    2001,
    12,
    'SUB_MANU0007',
    '69640415-2a39-11f0-9190-d2343eedb240',
    '係長2',
    '七郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '七郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    1,
    1001,
    3,
    'HD0007',
    '6964075c-2a39-11f0-9190-d2343eedb240',
    '係長1',
    '七郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '七郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    10,
    10001,
    83,
    'SUB_LOGI0008',
    '69640b4b-2a39-11f0-9190-d2343eedb240',
    '主任10',
    '八郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '八郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    9,
    9001,
    74,
    'SUB_SOL0008',
    '69640f9c-2a39-11f0-9190-d2343eedb240',
    '主任9',
    '八郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '八郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    8,
    8001,
    65,
    'SUB_RND0008',
    '696412aa-2a39-11f0-9190-d2343eedb240',
    '主任8',
    '八郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '八郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    7,
    7001,
    56,
    'SUB_SALES0008',
    '696415ae-2a39-11f0-9190-d2343eedb240',
    '主任7',
    '八郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '八郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    6,
    6001,
    47,
    'SUB_FIN0008',
    '6964185b-2a39-11f0-9190-d2343eedb240',
    '主任6',
    '八郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '八郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    5,
    5001,
    38,
    'SUB_INTL0008',
    '69641af2-2a39-11f0-9190-d2343eedb240',
    '主任5',
    '八郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '八郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    4,
    4001,
    29,
    'SUB_TECH0008',
    '69641d81-2a39-11f0-9190-d2343eedb240',
    '主任4',
    '八郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '八郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    3,
    3001,
    20,
    'SUB_SERV0008',
    '696421b1-2a39-11f0-9190-d2343eedb240',
    '主任3',
    '八郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '八郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    2,
    2001,
    11,
    'SUB_MANU0008',
    '696423bc-2a39-11f0-9190-d2343eedb240',
    '主任2',
    '八郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '八郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    1,
    1001,
    2,
    'HD0008',
    '6964259f-2a39-11f0-9190-d2343eedb240',
    '主任1',
    '八郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '八郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    10,
    10001,
    82,
    'SUB_LOGI0009',
    '69642783-2a39-11f0-9190-d2343eedb240',
    '社員10',
    '九郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '九郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    9,
    9001,
    73,
    'SUB_SOL0009',
    '6964294f-2a39-11f0-9190-d2343eedb240',
    '社員9',
    '九郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '九郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    8,
    8001,
    64,
    'SUB_RND0009',
    '69642b0a-2a39-11f0-9190-d2343eedb240',
    '社員8',
    '九郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '九郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    7,
    7001,
    55,
    'SUB_SALES0009',
    '69642da7-2a39-11f0-9190-d2343eedb240',
    '社員7',
    '九郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '九郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    6,
    6001,
    46,
    'SUB_FIN0009',
    '69642f84-2a39-11f0-9190-d2343eedb240',
    '社員6',
    '九郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '九郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    5,
    5001,
    37,
    'SUB_INTL0009',
    '69643154-2a39-11f0-9190-d2343eedb240',
    '社員5',
    '九郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '九郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    4,
    4001,
    28,
    'SUB_TECH0009',
    '6964332e-2a39-11f0-9190-d2343eedb240',
    '社員4',
    '九郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '九郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    3,
    3001,
    19,
    'SUB_SERV0009',
    '69643690-2a39-11f0-9190-d2343eedb240',
    '社員3',
    '九郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '九郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    2,
    2001,
    10,
    'SUB_MANU0009',
    '69643870-2a39-11f0-9190-d2343eedb240',
    '社員2',
    '九郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '九郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    1,
    1001,
    1,
    'HD0009',
    '69643a7f-2a39-11f0-9190-d2343eedb240',
    '社員1',
    '九郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '九郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    10,
    10001,
    82,
    'SUB_LOGI0010',
    '69643c67-2a39-11f0-9190-d2343eedb240',
    '社員10',
    '十郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '十郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    9,
    9001,
    73,
    'SUB_SOL0010',
    '69643e44-2a39-11f0-9190-d2343eedb240',
    '社員9',
    '十郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '十郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    8,
    8001,
    64,
    'SUB_RND0010',
    '69644006-2a39-11f0-9190-d2343eedb240',
    '社員8',
    '十郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '十郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    7,
    7001,
    55,
    'SUB_SALES0010',
    '696441be-2a39-11f0-9190-d2343eedb240',
    '社員7',
    '十郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '十郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    6,
    6001,
    46,
    'SUB_FIN0010',
    '696443ce-2a39-11f0-9190-d2343eedb240',
    '社員6',
    '十郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '十郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    5,
    5001,
    37,
    'SUB_INTL0010',
    '6964457b-2a39-11f0-9190-d2343eedb240',
    '社員5',
    '十郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '十郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    4,
    4001,
    28,
    'SUB_TECH0010',
    '69644744-2a39-11f0-9190-d2343eedb240',
    '社員4',
    '十郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '十郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    3,
    3001,
    19,
    'SUB_SERV0010',
    '6964aab7-2a39-11f0-9190-d2343eedb240',
    '社員3',
    '十郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '十郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    2,
    2001,
    10,
    'SUB_MANU0010',
    '6964af7f-2a39-11f0-9190-d2343eedb240',
    '社員2',
    '十郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '十郎@example.com',
    NULL
  );

INSERT INTO
  m_employee (
    company_id,
    org_id,
    position_id,
    emp_code,
    azure_ad_object_id,
    last_name,
    first_name,
    last_name_kana,
    first_name_kana,
    employment_type,
    status,
    email,
    phone_number
  )
VALUES
  (
    1,
    1001,
    1,
    'HD0010',
    '6964b233-2a39-11f0-9190-d2343eedb240',
    '社員1',
    '十郎',
    NULL,
    NULL,
    'REGULAR',
    'ACTIVE',
    '十郎@example.com',
    NULL
  );

INSERT INTO
  m_employee_account (emp_id, bank_code, branch_code, account_type, account_no, account_name, currency_code, purpose, priority, valid_from)
SELECT
  emp_id,
  '0001',
  '001',
  'FUTSU',
  '1234567',
  'ヤマダタロウ',
  'JPY',
  'PAYROLL',
  1,
  NOW()
FROM
  m_employee
WHERE
  emp_code = 'HD0002';

INSERT INTO
  m_employee_account (emp_id, bank_code, branch_code, account_type, account_no, account_name, currency_code, purpose, priority)
SELECT
  emp_id,
  '0005',
  '101',
  'FUTSU',
  '7654321',
  'スズキハナ',
  'JPY',
  'EXPENSE',
  1
FROM
  m_employee
WHERE
  emp_code = 'HD0010';

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (1, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (2, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (3, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (4, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (5, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (6, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (7, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (8, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (9, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (10, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (11, 'ja-JP', 'Asia/Tokyo', 'DARK', 'YYYY/MM/DD', 'SLACK');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (12, 'ja-JP', 'Asia/Tokyo', 'DARK', 'YYYY/MM/DD', 'SLACK');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (13, 'ja-JP', 'Asia/Tokyo', 'DARK', 'YYYY/MM/DD', 'SLACK');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (14, 'ja-JP', 'Asia/Tokyo', 'DARK', 'YYYY/MM/DD', 'SLACK');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (15, 'ja-JP', 'Asia/Tokyo', 'DARK', 'YYYY/MM/DD', 'SLACK');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (16, 'en-US', 'UTC', 'DARK', 'YYYY/MM/DD', 'SLACK');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (17, 'ja-JP', 'Asia/Tokyo', 'DARK', 'YYYY/MM/DD', 'SLACK');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (18, 'ja-JP', 'Asia/Tokyo', 'DARK', 'YYYY/MM/DD', 'SLACK');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (19, 'ja-JP', 'Asia/Tokyo', 'DARK', 'YYYY/MM/DD', 'SLACK');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (20, 'ja-JP', 'Asia/Tokyo', 'DARK', 'YYYY/MM/DD', 'SLACK');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (21, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (22, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (23, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (24, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (25, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (26, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (27, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (28, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (29, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (30, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (31, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (32, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (33, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (34, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (35, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (36, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (37, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (38, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (39, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (40, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (41, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (42, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (43, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (44, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (45, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (46, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (47, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (48, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (49, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (50, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (51, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (52, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (53, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (54, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (55, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (56, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (57, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (58, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (59, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (60, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (61, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (62, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (63, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (64, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (65, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (66, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (67, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (68, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (69, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (70, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (71, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (72, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (73, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (74, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (75, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (76, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (77, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (78, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (79, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (80, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (81, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (82, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (83, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (84, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (85, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (86, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (87, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (88, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (89, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (90, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (91, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (92, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (93, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (94, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (95, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (96, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (97, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (98, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (99, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');

INSERT INTO
  m_employee_preference (emp_id, locale, timezone, theme, date_format, notify_type)
VALUES
  (100, 'ja-JP', 'Asia/Tokyo', 'LIGHT', 'YYYY/MM/DD', 'EMAIL');
