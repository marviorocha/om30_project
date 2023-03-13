
CREATE TABLE addresses (
    id SERIAL PRIMARY KEY NOT NULL,
    zipcode VARCHAR NOT NULL,
    street VARCHAR NOT NULL,
    complement VARCHAR NOT NULL,
    district VARCHAR NOT NULL,
    city VARCHAR NOT NULL,
    state VARCHAR,
    ibge_code BIGINT,
    citizen_id INT,
    FOREIGN KEY (citizen_id) REFERENCES citizens(id),
    created_at TIMESTAMP(6) NOT NULL,
    updated_at TIMESTAMP(6) NOT NULL
);


-- -- INSERT Citizen:
-- INSERT INTO citizens (full_name, email, cpf, cns, date_of_birth, phone, status, created_at, updated_at) VALUES
--        ('Marvio Rocha', 'marviorocha@gmail.com','106.347.286-24', '12345678912345', '1987-06-04', '(23) 3520-0410', 'true', '2023-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z'),
--        ('Hólger Gomes', 'holger.gomes@example.com','749.433.116-03', '12345678912345', '1988-03-04', '(18) 3995-0208', 'true', '2023-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z'),
--        ('Yones Nascimento', 'yones.nascimento@example.com','737.217.764-84', '12345678912345', '1977-02-16', '(11) 9856-0208', 'true', '2023-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z'),
--        ('Délia Costa', 'delia.costa@example.com','428.205.054-46', '12345678912345', '1950-01-16', '(54) 4233-0208', 'true', '2023-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z'),
--        ('Jaques Farias', 'jaques.farias@example.com"','158.354.987-02', '12345678912345', '1987-06-04', '(81) 3995-0208', 'false', '2023-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z');
-- ;

-- INSERT Address:
-- INSERT INTO addresses (cep, logadouro, district, city, uf, ibge_code, citizen_id, created_at, updated_at) VALUES
--        ('279101212', 'Rua Manuel Leopardo dos Eucalyptus','Centro', 'Macaé', 'RJ', '1354562456815467', 1, '2023-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z'),
--        ('279854545', 'Rua Santos Domond Andrad','Centro', 'Belford Roxo', 'RJ', '465456541122', 2, '2000-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z'),
--        ('958897887', 'Rua Ferreira Viana','Pereira', 'Santos', 'SP', '456545654', 3, '2000-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z'),
--        ('898754547', 'Av. Pereira Junior','Nova Aurora', 'Cabo Frio', 'RJ', '56545654', 4, '2000-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z'),
--        ('987871126', 'Rua Padrinho Jão Vinte','Benedito', 'Anápolis', 'GO', '456545654', 5, '2000-01-03T01:38:02.395Z', '2023-01-03T01:38:02.395Z');
--
-- ;