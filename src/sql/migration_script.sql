-- Auto-generated: migration script v1428
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_1428 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    priority SMALLINT DEFAULT 0,
    counter INTEGER DEFAULT 0,
    score DECIMAL(10,2),
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_1428_name
    ON migration_script_1428(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_1428_created
    ON migration_script_1428(created_at DESC);

-- Seed data
INSERT INTO migration_script_1428 (name, is_active)
VALUES
    ('item_0', 'val_0_1428'),
    ('item_1', 'val_1_1428'),
    ('item_2', 'val_2_1428');

-- View
CREATE OR REPLACE VIEW v_migration_script_1428_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_1428
GROUP BY name
ORDER BY total DESC;
