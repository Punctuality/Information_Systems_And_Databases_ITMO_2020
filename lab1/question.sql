-- Places leopard hadn't visited

select s.name, p.place from animal
join species s on s.species_id = animal.species_id AND s.name = 'леопард'
join movement m on animal.animal_id = m.animal_id
join place p on m.from_place_id != p.place_id AND m.to_place_id != p.place_id;

select place.place from place
where place.place_id NOT IN (
    select p.place_id from animal
    join movement m on animal.animal_id = m.animal_id
    join place p on m.from_place_id = p.place_id or m.to_place_id = p.place_id
    join species s on animal.species_id = s.species_id
    where s.name = 'леопард'
    );

select place.place, a.action from place
join action a on place.place_id = a.place_id;