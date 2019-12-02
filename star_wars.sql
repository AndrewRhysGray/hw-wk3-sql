DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers (
id SERIAL PRIMARY KEY,
hilt_metal VARCHAR(255) NOT NULL,
colour VARCHAR(255) NOT NULL,
character_id INT REFERENCES characters(id)
);

INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);

INSERT INTO lightsabers (hilt_metal, colour, character_id) VALUES ('steel', 'green', 1);
INSERT INTO lightsabers (hilt_metal, colour, character_id) VALUES ('metal', 'black', 2);

-- INSERT INTO characters (name, darkside, age) VALUES ('Luke Skywalker', false, 17);
--
-- UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';
-- UPDATE characters SET age = 65 WHERE age = 27;
--
-- DELETE FROM characters WHERE name = 'Obi-Wan Kenobi';
--
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);

-- UPDATE characters SET age = 26 where id = 3;
SELECT * FROM lightsabers;
SELECT * FROM characters;
