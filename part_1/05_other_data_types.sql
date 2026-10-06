

DROP TABLE IF EXISTS basics.app_event;

CREATE TABLE basics.app_event (
    --UUID
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    event TEXT NOT NULL,

    --JSONB
    metadata JSONB DEFAULT '{}'::jsonb,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.app_event (event, metadata)
 VALUES 
 (
    'sign_up', '{"browser": "chrome"}'
 ), 
 (
    'sign_in', '{"user": "taiwo"}'
 );

--  SELECT * FROM basics.app_event;

 SELECT
    event,
    metadata ->> 'browser' AS browser
FROM basics.app_event
WHERE metadata ? 'browser';