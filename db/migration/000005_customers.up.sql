CREATE TABLE IF NOT EXISTS customers (
    id VARCHAR(255) NOT NULL PRIMARY KEY,
    email varchar(255) NOT NULL,
    avatar varchar(255) NOT NULL,
    active SMALLINT NOT NULL,
    address varchar(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100) NULL,
    updated_by VARCHAR(100) NULL
);
