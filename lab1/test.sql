-- Where did it go?

SELECT species.name, from_p.place, to_p.place FROM animal
INNER JOIN species on animal.species_id = species.species_id
INNER JOIN movement on animal.animal_id = movement.animal_id
INNER JOIN place from_p on from_p.place_id = movement.from_place_id
INNER JOIN place to_p on to_p.place_id = movement.to_place_id;

-- What is it?

SELECT s.name, ac.characteristic FROM animal
INNER JOIN species s on animal.species_id = s.species_id
INNER JOIN animal_to_characteristic atc on animal.animal_id = atc.animal_id
INNER JOIN animal_characteristic ac on ac.a_characteristic_id = atc.a_characteristic_id;

-- What has it done?

SELECT s.name, a.affected_by, a.action, p.place FROM animal
INNER JOIN species s on s.species_id = animal.species_id
INNER JOIN action a on animal.animal_id = a.animal_id
Inner Join place p on p.place_id = a.place_id;