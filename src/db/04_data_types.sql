CREATE TABLE trainers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER CHECK (age >= 18),
    experience_years INTEGER DEFAULT 0,
    specialization VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE fitness_clients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    birth_date DATE,
    visits_count INTEGER DEFAULT 0,
    balance NUMERIC(10,2) DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE classes (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    trainer_id INTEGER REFERENCES trainers(id),
    class_date DATE DEFAULT CURRENT_DATE,
    max_people INTEGER CHECK (max_people > 0),
    price NUMERIC(10,2) CHECK (price >= 0)
);