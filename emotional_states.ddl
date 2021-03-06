CREATE TABLE IF NOT EXISTS emotions (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	date_time timestamp DEFAULT (strftime('%Y-%m-%d %H:%M','now', 'localtime')),
	emotion INTEGER
);

CREATE TABLE IF NOT EXISTS emotion_lookup (
	id INTEGER PRIMARY KEY,
	description VARCHAR(25)
);

INSERT INTO emotion_lookup (id, description) VALUES (0, 'Angry');
INSERT INTO emotion_lookup (id, description) VALUES (1, 'Disgust');
INSERT INTO emotion_lookup (id, description) VALUES (2, 'Fear');
INSERT INTO emotion_lookup (id, description) VALUES (3, 'Happy');
INSERT INTO emotion_lookup (id, description) VALUES (4, 'Sad');
INSERT INTO emotion_lookup (id, description) VALUES (5, 'Surprise');
INSERT INTO emotion_lookup (id, description) VALUES (6, 'Neutral');

CREATE TABLE IF NOT EXISTS url_emotions (
	url VARCHAR(100),
	emotion INTEGER,
	count INTEGER,
	PRIMARY KEY (url, emotion)
);
