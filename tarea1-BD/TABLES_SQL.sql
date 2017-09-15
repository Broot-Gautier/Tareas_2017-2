CREATE TABLE Profesor(
  correoProfesor varchar(45) not null,
  nombre varchar(45) not null,
  apellido varchar(45) not null,
  contraseña varchar(45) not null,
  PRIMARY KEY (correoProfesor)
);
CREATE TABLE Video(
  idVideos int not null,
  url varchar(45) not null,
  idCurso int not null,
  PRIMARY KEY (idVideos)
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
CREATE TABLE Documento(
  idDocumento int not null,
  texto varchar(45) not null,
  idCurso int not null,
  PRIMARY KEY (idDocumento),
  FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
 ); 
CREATE TABLE Contenido(
  idContenido int not null,
  idCurso int not null,
  titulo varchar(45) not null,
  descripcion varchar(45) not null,
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
  