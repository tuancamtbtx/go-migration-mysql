CREATE TABLE IF NOT EXISTS transactions (
    id VARCHAR(255) NOT NULL PRIMARY KEY,
    saving_book_id SMALLINT NOT NULL,
    type SMALLINT NOT NULL,
    amount DECIMAL(19 , 4 ) NOT NULL,
    description varchar(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP
);