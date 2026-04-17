-- Auto-generated: schema — database schema definition v626
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_626 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    description TEXT,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_626_name
    ON schema_—_database_schema_definition_626(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_626_created
    ON schema_—_database_schema_definition_626(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_626 (name, priority)
VALUES
    ('item_0', 'val_0_626'),
    ('item_1', 'val_1_626'),
    ('item_2', 'val_2_626'),
    ('item_3', 'val_3_626'),
    ('item_4', 'val_4_626'),
    ('item_5', 'val_5_626'),
    ('item_6', 'val_6_626'),
    ('item_7', 'val_7_626'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_626_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_626
GROUP BY name
ORDER BY total DESC;
