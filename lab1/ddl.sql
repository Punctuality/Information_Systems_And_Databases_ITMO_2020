CREATE TABLE IF NOT EXISTS species (
    species_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS animal_characteristic (
    a_characteristic_id SERIAL PRIMARY KEY,
    characteristic VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS animal (
    animal_id SERIAL PRIMARY KEY,
    species_id INTEGER REFERENCES species (species_id)
);

CREATE TABLE IF NOT EXISTS animal_to_characteristic (
    animal_id INTEGER REFERENCES animal (animal_id),
    a_characteristic_id INTEGER REFERENCES animal_characteristic (a_characteristic_id)
);

CREATE TABLE IF NOT EXISTS place_characteristic (
    p_characteristic_id SERIAL PRIMARY KEY,
    characteristic VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS place (
    place_id SERIAL PRIMARY KEY,
    place VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS place_to_characteristic (
    place_id INTEGER REFERENCES place (place_id),
    p_characteristic_id INTEGER REFERENCES place_characteristic (p_characteristic_id)
);

CREATE TABLE IF NOT EXISTS movement (
    movement_id SERIAL PRIMARY KEY,
    animal_id INTEGER REFERENCES animal (animal_id),
    from_place_id INTEGER REFERENCES place (place_id),
    to_place_id INTEGER REFERENCES place (place_id)
);
