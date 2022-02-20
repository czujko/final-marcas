for $grupo in //country//ethnicgroups
let $pais :=$grupo/../@name/string()
let $pctg := $grupo/@percentage/number()
return
<ethnigroups country="{$pais}" name="{$grupo/string()}" porcentaje="{$pctg}"/>

