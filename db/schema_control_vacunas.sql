CREATE TABLE pacientes (
  id SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL,
  dni TEXT UNIQUE NOT NULL,
  fecha_nacimiento DATE,
  genero TEXT
);

CREATE TABLE vacunas (
  id SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL,
  descripcion TEXT
);

CREATE TABLE aplicaciones_vacunas (
  id SERIAL PRIMARY KEY,
  paciente_id INT REFERENCES pacientes(id),
  vacuna_id INT REFERENCES vacunas(id),
  fecha_aplicacion DATE NOT NULL,
  proxima_dosis DATE,
  observaciones TEXT
);
