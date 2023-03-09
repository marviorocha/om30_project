
-- Create table municipe people:
CREATE TABLE people (
    id SERIAL PRIMARY KEY NOT NULL,
    full_name VARCHAR,
    email VARCHAR NOT NULL,
    cpf VARCHAR UNIQUE NOT NULL,
    cns VARCHAR NOT NULL,
    born DATE,
    phone VARCHAR,
    status BOOLEAN NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
    );

-- INSERT People:
INSERT INTO people (full_name, email, cpf, cns, born, phone, status, created_at, updated_at) VALUES
       ('Marvio Rocha', 'marviorocha@gmail.com','106.347.286-24', '12345678912345', '1987-06-04', '(23) 3520-0410', 'true', '2023-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z'),
       ('Hólger Gomes', 'holger.gomes@example.com','749.433.116-03', '4565454575456712', '1988-03-04', '(18) 3995-0208', 'true', '2023-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z'),
       ('Yones Nascimento', 'yones.nascimento@example.com','737.217.764-84', '123456574245645', '1977-02-16', '(11) 9856-0208', 'true', '2023-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z'),
       ('Délia Costa', 'delia.costa@example.com','428.205.054-46', '12345678912345', '1950-01-16', '(54) 4233-0208', 'true', '2023-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z'),
       ('Jaques Farias', 'jaques.farias@example.com"','158.354.987-02', '12345678912345', '1987-06-04', '(81) 3995-0208', 'false', '2023-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z');
;