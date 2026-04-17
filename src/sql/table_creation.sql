-- Auto-generated: table creation v6579
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_6579 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    priority SMALLINT DEFAULT 0,
    email VARCHAR(255),
    metadata JSONB,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_6579_name
    ON table_creation_6579(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_6579_created
    ON table_creation_6579(created_at DESC);

-- Seed data
INSERT INTO table_creation_6579 (name, score)
VALUES
    ('item_0', 'val_0_6579'),
    ('item_1', 'val_1_6579'),
    ('item_2', 'val_2_6579'),
    ('item_3', 'val_3_6579'),
    ('item_4', 'val_4_6579'),
    ('item_5', 'val_5_6579'),
    ('item_6', 'val_6_6579'),
    ('item_7', 'val_7_6579'),

-- View
CREATE OR REPLACE VIEW v_table_creation_6579_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_6579
GROUP BY name
ORDER BY total DESC;
