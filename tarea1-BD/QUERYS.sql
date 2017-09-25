select nombre from Profesor;
select titulo from Curso where correoProfesor='cecilia.reyes@usm.cl' ;
select titulo from Curso where (FechaInicioCurso>='2017')&(FechaFinCurso<'2018') ;
select Estudiante.nombre from Estudiante INNER JOIN Curso_Estudiante ON (Curso_Estudiante.idCurso=2)&(Curso_Estudiante.correoEstudiante=Estudiante.correoEstudiante);


select distinct Estudiante.nombre, Estudiante.apellido, Curso.idCurso
from Estudiante
INNER JOIN Curso_Estudiante on (Estudiante.correoEstudiante = Curso_Estudiante.correoEstudiante)
INNER JOIN Curso on (Curso_Estudiante.idCurso = Curso.idCurso)
where  Curso.correoProfesor NOT REGEXP '.*@usm.cl';

select DISTINCT Curso.titulo, Profesor.nombre, Profesor.apellido ,COUNT(Video.idCurso)
from Video
INNER JOIN Curso on Curso.idCurso = Video.idCurso
INNER JOIN Profesor on Curso.correoProfesor = Profesor.correoProfesor
GROUP BY Video.idCurso;

