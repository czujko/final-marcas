for $pais in //country/@name/string()
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