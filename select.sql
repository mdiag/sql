--récupérer toutes les classes
-- SELECT Classroom.*
-- FROM formation.classroom

-- récupérer certaines colonnes
-- SELECT classroom.name
-- FROM formation.classroom;

-- créer une condition liée à une liste de valeur
-- SELECT skill.name
-- FROM formation.skill
-- WHERE skill.id IN (1, 5);

-- créer une condition liée à une recherche textuelle
-- SELECT skill.name
-- FROM formation.skill
-- WHERE skill.name LIKE '%a%';

-- créer une condition sur un intervalle
-- SELECT student.firstname, student.lastname
-- FROM formation.student
-- WHERE student.age BETWEEN 20 AND 25
-- AND student.isExternal = 1
-- ;

-- trier les étudiants
-- SELECT student.firstname, student.lastname
-- FROM formation.student
-- ORDER BY student.lastname ASC
-- LIMIT 6
-- ;

--créer des jointures
SELECT student.*, classroom.name
FROM formation.student
JOIN formation.classroom
ON student.classroom_id = classroom.id
;