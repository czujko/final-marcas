declare function local:miles($valor as xs:decimal?)
as xs:decimal?
{
let $salida := xs:integer($valor div 1000)
return $salida
};

for $pais in //country
let $poblacion := local:miles($pais/@population)
order by $pais/@population/number()
where $poblacion >= 1000 and $poblacion <=5000
return
<pais nombre="{$pais/@name/string()}" habitantes="{$poblacion}" />