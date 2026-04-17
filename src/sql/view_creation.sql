-- Auto-generated: view creation v3100
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_3100 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_3100_name
    ON view_creation_3100(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_3100_created
    ON view_creation_3100(created_at DESC);

-- Seed data
INSERT INTO view_creation_3100 (name, counter)
VALUES
    ('item_0', 'val_0_3100'),
    ('item_1', 'val_1_3100'),
    ('item_2', 'val_2_3100'),
    ('item_3', 'val_3_3100'),
    ('item_4', 'val_4_3100'),
    ('item_5', 'val_5_3100'),
    ('item_6', 'val_6_3100'),
    ('item_7', 'val_7_3100'),

-- View
CREATE OR REPLACE VIEW v_view_creation_3100_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_3100
GROUP BY name
ORDER BY total DESC;
