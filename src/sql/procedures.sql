-- Auto-generated: procedures — procedures v5153
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_5153 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    priority SMALLINT DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    description TEXT,
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_5153_name
    ON procedures_—_procedures_5153(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_5153_created
    ON procedures_—_procedures_5153(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_5153 (name, status)
VALUES
    ('item_0', 'val_0_5153'),
    ('item_1', 'val_1_5153'),
    ('item_2', 'val_2_5153'),
    ('item_3', 'val_3_5153'),
    ('item_4', 'val_4_5153'),
    ('item_5', 'val_5_5153'),
    ('item_6', 'val_6_5153'),
    ('item_7', 'val_7_5153'),

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_5153_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_5153
GROUP BY name
ORDER BY total DESC;
