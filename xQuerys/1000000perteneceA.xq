for $ciudad at $contador in //city
let $nombre := $ciudad/name/string()
let $poblacion := $ciudad/population[last()]
let $pais := //country[@id=$ciudad/@country]/name/string()
order by $poblacion/data() descending
where $poblacion/number() > 1000000
return
  <dato>{$nombre} en el año {$poblacion/@year/data()} tenía {$poblacion/data()} cuenta {$contador}
  pertenece {$pais}</dato>