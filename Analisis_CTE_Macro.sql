INSERT INTO "with promedioExportaciones as(
	select avg(""Exportaciones_MDP"") as ""Media_Anual""
	from indicadores_macro
)
select 	
	m.""Fecha"",
	m.""Exportaciones_MDP"",
	p.""Media_Anual""
from 
	indicadores_macro m
cross join 
	promedioExportaciones p
where 	
	m.""Exportaciones_MDP"">p.""Media_Anual"" " ("Fecha","Exportaciones_MDP","Media_Anual") VALUES
	 ('2025-05-01',44000,43862.500000000000),
	 ('2025-06-01',45500,43862.500000000000),
	 ('2025-07-01',46100,43862.500000000000),
	 ('2025-08-01',45800,43862.500000000000);
