for $pais in //country
let $poblacion := xs:integer($pais/@population
div 1000)
order by $pais/@population/number()
where $poblacion>=1000000
return
  <pais nombre="{$pais/name/string()}"
  habitantes="{$poblacion}" />