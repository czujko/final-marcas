for $continente in // continent
let $nombre := $continente/@name/string()
order by $continente/@name/string()
return 
  <continente nombre= "{$nombre}" />