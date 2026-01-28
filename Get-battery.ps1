$Ciclos = (Get-CimInstance -Namespace root\wmi -ClassName BatteryCycleCount).CycleCount
$CargaCapacidad = (Get-WmiObject -Class BatteryStaticData -Namespace ROOT\WMI).DesignedCapacity
$CargaMaxima = (Get-CimInstance -Namespace root\wmi -ClassName BatteryFullChargedCapacity).FullChargedCapacity
$BateriaSalud = [math]::Round((($CargaMaxima / $CargaCapacidad) * 100), 2)

$infoBateria = [PSCustomObject]@{

    "Ciclos de carga"      = $Ciclos
    "Capacidad (mAh)"      = $CargaCapacidad
    "Carga completa (mAh)" = $CargaMaxima
    "Salud (%)"            = $BateriaSalud

}

$infoBateria | Format-Table -AutoSize