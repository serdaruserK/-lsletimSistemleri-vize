
$arr = @()
$geta = Get-Process | Select-Object Id,Name;
$get = $geta
$s = Get-WmiObject win32_service | Select-Object Name,ProcessId;
foreach($i in $s){
  if(($i.ProcessId ) -and ($geta.PID )){     
    $Obj = New-Object psobject
    $Obj | Add-Member -MemberType NoteProperty -Name İds -Value $i.ProcessId
    $Obj | Add-Member -MemberType NoteProperty -Name Names -Value $i.Name
    $Obj | Add-Member -MemberType NoteProperty -Name Names -Value $geta

    $arr += $Obj
  }
}
$arr