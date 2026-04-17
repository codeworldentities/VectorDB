-- Auto-generated: views — views v3963
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_3963 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_3963_name
    ON views_—_views_3963(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_3963_created
    ON views_—_views_3963(created_at DESC);

-- Seed data
INSERT INTO views_—_views_3963 (name, metadata)
VALUES
    ('item_0', 'val_0_3963'),
    ('item_1', 'val_1_3963'),
    ('item_2', 'val_2_3963'),
    ('item_3', 'val_3_3963'),
    ('item_4', 'val_4_3963'),
    ('item_5', 'val_5_3963'),
    ('item_6', 'val_6_3963'),
    ('item_7', 'val_7_3963'),

-- View
CREATE OR REPLACE VIEW v_views_—_views_3963_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_3963
GROUP BY name
ORDER BY total DESC;
