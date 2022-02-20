for $pais in //country/@name/string()
where substring($pais, 1, 1) = "A"
return
<country name="{$pais}">
{
  for $grupo in //country[name=$pais]//religions
  let $pctg := $grupo/@percentage/number()
  let $nReligions := $grupo/string()
  return
  <religions name="{$nReligions}" porcentage= "{$pctg}" />
}

</country>