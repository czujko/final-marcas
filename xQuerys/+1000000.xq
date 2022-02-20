for $ciudad in //city
let $nombre := $ciudad/name/string()
let $poblacion := $ciudad/population[last()]
where $poblacion/number() > 1000000
return
  <dato>{$nombre} en el año {$poblacion/@year/data()} tenía {$poblacion/data()}</dato>
  
  