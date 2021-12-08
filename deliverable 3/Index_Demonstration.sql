USE Campus_Eats_Fall2020;

SELECT person_id, person_email, person_name
FROM person
WHERE person_name = 'Carey Sawayn';

CREATE INDEX idx_person 
ON person (person_name);

DROP INDEX idx_person ON person;
