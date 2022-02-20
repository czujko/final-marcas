for $pais in //country
let $poblacion := xs:integer($pais/@population)
order by $pais/@population/number()
where substring($pais/@name/string(),1, 3) = "Spa"
return
  <pais nombre="{$pais/name/string()}"
  habitantes="{$poblacion}" />
