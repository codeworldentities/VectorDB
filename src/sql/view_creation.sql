-- Auto-generated: view creation v793
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_793 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    status VARCHAR(50) DEFAULT 'active',
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_793_name
    ON view_creation_793(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_793_created
    ON view_creation_793(created_at DESC);

-- Seed data
INSERT INTO view_creation_793 (name, score)
VALUES
    ('item_0', 'val_0_793'),
    ('item_1', 'val_1_793'),
    ('item_2', 'val_2_793'),
    ('item_3', 'val_3_793'),
    ('item_4', 'val_4_793'),
    ('item_5', 'val_5_793'),
    ('item_6', 'val_6_793'),
    ('item_7', 'val_7_793'),

-- View
CREATE OR REPLACE VIEW v_view_creation_793_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_793
GROUP BY name
ORDER BY total DESC;
