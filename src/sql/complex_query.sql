-- Auto-generated: complex query v9457
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_9457 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    priority SMALLINT DEFAULT 0,
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_9457_name
    ON complex_query_9457(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_9457_created
    ON complex_query_9457(created_at DESC);

-- Seed data
INSERT INTO complex_query_9457 (name, metadata)
VALUES
    ('item_0', 'val_0_9457'),
    ('item_1', 'val_1_9457'),
    ('item_2', 'val_2_9457'),
    ('item_3', 'val_3_9457'),
    ('item_4', 'val_4_9457'),
    ('item_5', 'val_5_9457'),
    ('item_6', 'val_6_9457'),
    ('item_7', 'val_7_9457'),

-- View
CREATE OR REPLACE VIEW v_complex_query_9457_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_9457
GROUP BY name
ORDER BY total DESC;
