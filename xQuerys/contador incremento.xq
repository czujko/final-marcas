declare function local:miles($valor as xs:decimal?)
as xs:decimal?
{
let $salida := xs:integer($valor div 1000)
return $salida
};

for $pais at $contador in //country
let $poblacion := local:miles($pais/@population)
(:order by $pais/@population/number() ascending (:descending:):)
where $poblacion > 3 and $poblacion < 10
return
<pais id="P_{$contador}" nombre="{$pais/@name/string()}" habitantes="{$poblacion}" />