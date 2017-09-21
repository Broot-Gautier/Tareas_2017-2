select nombre from Profesor;
select titulo from Curso where correoProfesor='cecilia.reyes@usm.cl' ;
select titulo from Curso where (FechaInicioCurso>='2017')&(FechaFinCurso<'2018') ;
select Estudiante.nombre from Estudiante INNER JOIN Curso_Estudiante ON (Curso_Estudiante.idCurso=2)&(Curso_Estudiante.correoEstudiante=Estudiante.correoEstudiante);
