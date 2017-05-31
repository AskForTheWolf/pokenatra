DROP TABLE IF EXISTS pokemon;
DROP TABLE IF EXISTS trainer;

create table trainer (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  photo_url VARCHAR,
  level VARCHAR
);

CREATE TABLE pokemon (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  type VARCHAR,
  cp VARCHAR,
  preview_url VARCHAR,
);
