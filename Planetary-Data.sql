CREATE TABLE organismos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    organismo VARCHAR(255),
    nombre_cientifico VARCHAR(255),
    peso_promedio VARCHAR(255),
    porcentaje_liquido VARCHAR(255),
    temperatura VARCHAR(255),
    presion VARCHAR(255),
    tipo_de_habitat VARCHAR(255),
    tipo_de_respiracion VARCHAR(255)
);

INSERT INTO organismos (organismo, nombre_cientifico, peso_promedio, porcentaje_liquido, temperatura, presion, tipo_de_habitat, tipo_de_respiracion)
VALUES
    ('Humano', 'Homo sapiens', '50 a 100 kilogramos', '60% a 65%', '22°C a 37°C', '1 atm', 'Terrestre', 'Aerobio'),
    ('Oso de agua', 'Tardigrada', 'No definido', 'No definido', '-273°C a 150°C', 'Hasta 6000 atm', 'Terrestre y Acuático', 'Aerobio y Anaerobio'),
    ('Estrella de mar', 'Asteroidea', '100 gramos a 1 kilogramo', '80% a 90%', '2°C a 28°C', '1 a 750 atm', 'Acuático', 'Aerobio'),
    ('Mosca de fruta', 'Drosophila melanogaster', '1 miligramo', '60%', '18°C a 25°C', '1 atm', 'Terrestre', 'Aerobio'),
    ('Arabidopsis', 'Arabidopsis thaliana', 'No definido', 'No definido', '18°C a 22°C', '1 atm', 'Terrestre', 'Aerobio');
