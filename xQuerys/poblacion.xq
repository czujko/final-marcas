for $pais in //country
let $poblacion := xs:integer($pais/@population)
order by $pais/@population/number()
return
  <pais nombre="{$pais/name/string()}"
  habitantes="{$poblacion}" />
