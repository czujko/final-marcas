for $pais in //country/@name/string()
return
<country name="{$pais}">
{
  for $grupo in //country[name=$pais]//ethnicgroups
  let $pctg := $grupo/percentage/number()
  let $nGrupo := $grupo/@percentage/string()
  return
  <ethnicgroup name="{nGrupo}" porcentage= "{$nGrupo}" />
}

</country>

