-- Auto-generated: complex query v2167
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_2167 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_2167_name
    ON complex_query_2167(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_2167_created
    ON complex_query_2167(created_at DESC);

-- Seed data
INSERT INTO complex_query_2167 (name, email)
VALUES
    ('item_0', 'val_0_2167'),
    ('item_1', 'val_1_2167'),
    ('item_2', 'val_2_2167');

-- View
CREATE OR REPLACE VIEW v_complex_query_2167_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_2167
GROUP BY name
ORDER BY total DESC;
