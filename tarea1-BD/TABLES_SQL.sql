CREATE TABLE Profesor(
  correoProfesor varchar(45) not null,
  nombre varchar(45) not null,
  apellido varchar(45) not null,
  contraseña varchar(45) not null,
  PRIMARY KEY (correoProfesor)
);
CREATE TABLE Curso(
  idCurso int not null,
  correoProfesor varchar(45) not null,
  FechaInicioCurso DATE not null,
  FechaFinCurso DATE not null,
  titulo varchar(45) not null,
  PRIMARY KEY (idCurso),
  FOREIGN KEY (correoProfesor) REFERENCES Profesor(correoProfesor)
);
CREATE TABLE Video(
  idVideos int not null,
  url varchar(45) not null,
  idCurso int not null,
  PRIMARY KEY (idVideos),
  FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
);
CREATE TABLE Documento(
  idDocumento int not null,
  texto varchar(45) not null,
  idCurso int not null,
  PRIMARY KEY (idDocumento),
  FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
 ); 
CREATE TABLE Contenido(
  idContenido int not null,
  titulo varchar(45) not null,
  descripcion varchar(45) not null,
  idCurso int not null,
  PRIMARY KEY (idContenido),
  FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
  );
CREATE TABLE Estudiante(
  correoEstudiante varchar(45) not null,
  nombre varchar(45) not null,
  apellido varchar(45) not null,
  contraseña varchar(45) not null,
  PRIMARY KEY (correoEstudiante) 
  );

CREATE TABLE Curso_Estudiante(
  idCurso int not null,
  correoEstudiante varchar(45) not null,
  fechaRegistro DATE not null,
  PRIMARY KEY (fechaRegistro),
  FOREIGN KEY (idCurso) REFERENCES Curso(idCurso),
  FOREIGN KEY (correoEstudiante) REFERENCES Estudiante(correoEstudiante)
  );
INSERT INTO Profesor
VALUES ('cecilia.reyes@usm.cl', 'Cecilia', 'Reyes', 'bd2017-2'),
 ('horst@vonbrand.cl', 'Horst', 'Von Brand', 'talf'),
('tuma@mate.cl', 'Elias', 'Tuma', 'teechastemate' ),
('tiofede@usm.cl', 'Federico', 'Santa Maria', 'donfede'),
 ('arturo.vidal@usm.cl', 'Arturo', 'Vidal', 'meretirodelaseleccion');
INSERT INTO Curso VALUES
(1, 'cecilia.reyes@usm.cl', '2017-09-04','2017-12-12', 'Bases de Datos' ), 
 (2, 'cecilia.reyes@usm.cl', '2017-10-01','2017-12-12', 'Gestion Proyectos' ),
 (3, 'horst@vonbrand.cl', '2017-09-04','2017-12-12', 'Algoritmos y Complejidad' ),
 (4, 'horst@vonbrand.cl', '2014-01-04','2014-07-12', 'Mate 4' ),
 (5, 'arturo.vidal@usm.cl', '2011-01-01','2016-12-12', 'Futbol para Principiantes' );

INSERT INTO Video VALUES
(1,'https://www.youtube.com/watch?v=y9K18CGEeiI',5),
  (2,'https://www.youtube.com/watch?v=D-UmfqFjpl0',5),
  (3,'https://www.youtube.com/watch?v=HgzGwKwLmgM',1),
  (4,'https://www.youtube.com/watch?v=j1_JW7An2l0',2),
  (5,'https://www.youtube.com/watch?v=3T_bu3CtS1U',2);
INSERT INTO Documento VALUES
(1,'ola k ase',3),
 (2,'texto ',1);
 INSERT INTO Contenido VALUES
  (1,'modelo conceptual', 'como hacer modelos conceptuales',1),
  (2,'normalizacion', 'normalizando hasta morir',1),
  (3,'analisis numero', 'VTR3',3);
 INSERT INTO Estudiante VALUES
('cecilia.reyes@usm.cl', 'Cecilia', 'Reyes', 'bd2017-2' ),
  ('arturo.vidal@usm.cl', 'Arturo', 'Vidal', 'meretirodelaseleccion' ),
  ('sebastian@usm.cl', 'Sebastian', 'Gallardo', 'ayudantebd' ),
  ('javier@usm.cl', 'Javier', 'Jeria', 'otroayudante' ),
  ('jose@usm.cl', 'Jose Luis', 'Gallardo', 'otromas' );
INSERT INTO Curso_Estudiante VALUES
  (1,'sebastian@usm.cl','2017-1-1'),
  (1,'javier@usm.cl','2017-1-1'),
  (1,'jose@usm.cl','2017-1-1'),
  (3,'sebastian@usm.cl','2017-2-1'),
  (1,'sebastian@usm.cl','2017-6-6'),
  (2,'sebastian@usm.cl','2017-5-4'),
  (2,'jose@usm.cl','2017-1-1'),
  (3,'jose@usm.cl','2017-12-5'),
  (4,'arturo.vidal@usm.cl','2017-3-1'),
  (5,'cecilia.reyes@usm.cl','2017-3-1');
