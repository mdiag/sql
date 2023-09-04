-- supprimer la base de données si elle existe, en mode développement
DROP DATABASE IF EXISTS formation;

-- créer une base de données
CREATE DATABASE formation;

-- créer une table Classroom
CREATE TABLE formation.classroom(
    id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(6) NOT NULL
);

-- créer une table skill
CREATE TABLE formation.skill(
    id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- créer une table student
CREATE TABLE formation.student(
    id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    age TINYINT (2) NOT NULL,
    birthday DATE,
    isExternal BOOLEAN NOT NULL,
    classroom_id TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY(classroom_id) REFERENCES formation.classroom(id)
);

-- créer la table de jointure student/skill
CREATE TABLE formation.student_SKILL(
    student_id TINYINT UNSIGNED NOT NULL,
    skill_id TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (student_id) REFERENCES formation.student(id),
    FOREIGN KEY (skill_id) REFERENCES formation.skill(id),
    PRIMARY KEY (student_id, skill_id)
);

-- insertion de données
INSERT INTO formation.classroom(
VALUES
    (NULL, '6eme a'),
    (NULL, '6eme b'),
    (NULL, '6eme c'),
    (NULL, '6eme d')
);

INSERT INTO formation.skill
 VALUES (NULL, 'HTML'),
 (NULL, 'CSS'),
 (NULL, 'Agile'),
 (NULL, 'JavaScript'),
 (NULL, 'Bootstrap')
 ;

 INSERT INTO formation.student
 VALUES 
 (NULL, 'Amoro', 'TRAORE', 25, '1998-12-01', 1, 3),
 (NULL, 'Valène', 'BOULEAU', 20, '2003-12-01', 0, 1),
 (NULL, 'Mahamadou', 'DIAGOURAGA', 30, '1993-12-01', 0, 4),
 (NULL, 'Mohamed', 'ABBACAR', 22, '2003-12-01', 0, 3),
 (NULL, 'Younes', 'GHEZALI', 23, '2000-12-01', 1, 2)
 ;

-- MISE A JOUR
-- UPDATE formation.student
-- SET 
--     student.age = 20,
--     student.isExternal = 0,
--     student.birthday = '2003-12-31'
-- WHERE
--     student.id = 1 ;

    -- SUPPRESSION 

    -- DELETE FROM formation.student
    -- WHERE student.id = 1;