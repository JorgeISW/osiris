CREATE TABLE PlanetaryData (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Organismo VARCHAR(255),
    Nombre_cientifico VARCHAR(255),
    Peso_promedio VARCHAR(255),
    Porcentaje_liquido VARCHAR(255),
    Temperatura VARCHAR(255),
    Presion VARCHAR(255),
    Tipo_de_habitat VARCHAR(255),
    Tipo_de_respiracion VARCHAR(255)
);

INSERT INTO Organismos (Organismo, Nombre_cientifico, Peso_promedio, Porcentaje_liquido, Temperatura, Presion, Tipo_de_habitat, Tipo_de_respiracion)
VALUES
    ('Humano', 'Homo sapiens', '50 a 100 kilogramos', '60% a 65%', '22°C a 37°C', '1 atm', 'Terrestre', 'Aerobio'),
    ('Oso de agua', 'Tardigrada', 'No definido', 'No definido', '-273°C a 150°C', 'Hasta 6000 atm', 'Terrestre y Acuático', 'Aerobio y Anaerobio'),
    ('Estrella de mar', 'Asteroidea', '100 gramos a 1 kilogramo', '80% a 90%', '2°C a 28°C', '1 a 750 atm', 'Acuático', 'Aerobio'),
    ('Mosca de fruta', 'Drosophila melanogaster', '1 miligramo', '60%', '18°C a 25°C', '1 atm', 'Terrestre', 'Aerobio'),
    ('Arabidopsis', 'Arabidopsis thaliana', 'No definido', 'No definido', '18°C a 22°C', '1 atm', 'Terrestre', 'Aerobio');
