CREATE TABLE IF NOT EXISTS event_logs (
    id VARCHAR(255) NOT NULL PRIMARY KEY,
    event_type SMALLINT NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
