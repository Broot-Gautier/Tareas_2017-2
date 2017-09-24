CREATE TABLE Profesor(
  correoProfesor varchar(45) NOT NULL,
  nombre varchar(45) NOT NULL,
  apellido varchar(45) NOT NULL,
  contraseña varchar(45) NOT NULL,
  PRIMARY KEY (correoProfesor)
);
CREATE TABLE Curso(
  idCurso int NOT NULL,
  correoProfesor varchar(45) NOT NULL,
  FechaInicioCurso DATE NOT NULL,
  FechaFinCurso DATE NOT NULL,
  titulo varchar(45) NOT NULL,
  PRIMARY KEY (idCurso),
  FOREIGN KEY (correoProfesor) REFERENCES Profesor(correoProfesor)
);
CREATE TABLE Video(
  idVideos int NOT NULL,
  url varchar(45) NOT NULL,
  idCurso int NOT NULL,
  PRIMARY KEY (idVideos),
  FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
);
CREATE TABLE Documento(
  idDocumento int NOT NULL,
  texto varchar(45) NOT NULL,
  idCurso int NOT NULL,
  PRIMARY KEY (idDocumento),
  FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
 ); 
CREATE TABLE Contenido(
  idContenido int NOT NULL,
  titulo varchar(45) NOT NULL,
  descripcion varchar(45) NOT NULL,
  idCurso int NOT NULL,
  PRIMARY KEY (idContenido),
  FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
  );
CREATE TABLE Estudiante(
  correoEstudiante varchar(45) NOT NULL,
  nombre varchar(45) NOT NULL,
  apellido varchar(45) NOT NULL,
  contraseña varchar(45) NOT NULL,
  PRIMARY KEY (correoEstudiante) 
  );

CREATE TABLE Curso_Estudiante(
  idCurso int NOT NULL,
  correoEstudiante varchar(45) NOT NULL,
  fechaRegistro DATE NOT NULL,
  PRIMARY KEY (fechaRegistro,idCurso,correoEstudiante) 
);
