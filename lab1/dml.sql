-- Species
INSERT INTO species (species_id, name) VALUES (1, 'леопард');

-- Animal

INSERT INTO animal (animal_id, species_id) VALUES (1, 1);

-- Animal Characteristic

INSERT INTO animal_characteristic (a_characteristic_id, characteristic) VALUES
    (1, 'убогий свирепый мозг'),
    (2, 'неудержимо возбуждаем'),
    (3, 'непоколебим');

-- Association animal to animal_characteristic

INSERT INTO animal_to_characteristic (animal_id, a_characteristic_id) VALUES
    (1, 1),
    (1, 2),
    (1, 3);

-- Place

INSERT INTO place (place_id, place) VALUES
    (1, 'проход'),
    (2, 'пещера');

-- Place Characteristic

INSERT INTO place_characteristic (p_characteristic_id, characteristic) VALUES
    (1, 'узкий'),
    (2, 'пахнет свежей кровью');

-- Association place to place_characteristic

INSERT INTO place_to_characteristic (place_id, p_characteristic_id) VALUES
    (1, 1),
    (2, 2);

-- Action

INSERT INTO action (action_id, place_id, animal_id, affected_by, action) VALUES
    (1, 1, 1, NULL, 'задержался'),
    (2, 1, 1, 'свежая кровь', 'учуял запах крови'),
    (3, 1, 1, 'свежая кровь', 'размышлял о запахе крови'),
    (4, 2, 1, NULL, 'шагнул в пещеру');

-- Movement

INSERT INTO movement (animal_id, from_place_id, to_place_id, action_id) VALUES (1, 1, 2, 4);