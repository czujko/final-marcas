for $pais in //country
let $poblacion := xs:integer($pais/@population)
order by $pais/@population/number()
where substring($pais/@name/string(),1, 1) = "A"
return
  <pais nombre="{$pais/name/string()}"
  habitantes="{$poblacion}" />
