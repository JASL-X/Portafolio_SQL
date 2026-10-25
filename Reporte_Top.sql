create view reporte_clientes_top as
select 
	clientes."Nombre_Empresa",
	sum(ventas."Monto_Total") as "Total_Facturado"
from
	ventas
inner join 
	clientes on ventas."ID_Cliente" = clientes."ID_Cliente" 
group by 
	clientes."Nombre_Empresa"
having 
	sum(ventas."Monto_Total") > (select AVG("Monto_Total") from ventas)
order by 
	sum(ventas."Monto_Total") desc
	
	

								