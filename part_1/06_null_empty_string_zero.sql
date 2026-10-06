

-- null -> unknown or missing value
-- empty string -> known string val but it contains no character
-- zero -> actual numeric value

DROP TABLE IF EXISTS basics.value_examples;

CREATE TABLE basics.value_examples (
    id SERIAL PRIMARY KEY,
    nickName TEXT,
    bio TEXT,
    score INTEGER
);

INSERT INTO basics.value_examples(nickName, bio, score)
VALUES
    (null, 'learning postgresql', 10), 
    ('', 'empty nick name', 20), 
    ('sangam', '', 0), 
    ('john', null, null);

-- SELECT * FROM basics.value_examples;


-- SELECT * FROM basics.value_examples 
-- WHERE nickName IS NULL;

SELECT * FROM basics.value_examples 
WHERE nickName IS NOT NULL;

-- SELECT * FROM basics.value_examples 
-- WHERE score = 0;