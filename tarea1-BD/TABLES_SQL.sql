CREATE TABLE curso(
  idCurso int not null,
  correoProfesor varchar(45) not null,
  FechaInicioCurso DATE not null,
  FechaFinCurso DATE not null,
  titulo varchar(45) not null);
CREATE TABLE Profesor(
  correoProfesor varchar(45) not null,
  nombre varchar(246) not null,
  apellido varchar(246) not null,
  contraseña varchar(246) not null);
  