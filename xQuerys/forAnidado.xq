for $pais in //country/@name/string()
for $grupo in //country[name="Albania"]//ethnicgroups
let $pctg := $grupo/@percentage/number()
return
<ethnigroups country="{$pais}" name="{$grupo/string()}" porcentaje="{$pctg}"/>
