CREATE TABLE IF NOT EXISTS blocks (
  code VARCHAR(255) NOT NULL PRIMARY KEY,
  name varchar(255) NOT NULL,
  model_id varchar(36) NOT NULL,
  model_type int NOT NULL,
  description text,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP,
  created_by VARCHAR(100) NULL,
  updated_by VARCHAR(100) NULL
);
