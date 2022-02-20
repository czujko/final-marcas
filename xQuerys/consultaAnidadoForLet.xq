for $pais1 in //country
let $pais := $pais1/@name/string()
let $poblacion := xs:integer($pais1/@population)

where substring($pais, 1, 1) = "A"
where $poblacion > 1000000
return
<country name="{$pais}" population="{xs:integer($pais1/@population)}">
{
  for $grupo in //country[name=$pais]//religions
  let $pctg := $grupo/@percentage/number()
  let $nReligions := $grupo/string()
  return
  <religions name="{$nReligions}" porcentage= "{$pctg}" />
}

</country>