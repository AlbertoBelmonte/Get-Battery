# Get-Battery
Script en powershell que reporta en una tabla los ciclos de carga actuales de la bateria, capacidad actual, capacidad de fabrica y porcentaje que representa la vida actual de la bateria

Windows necesita tener firmado el .ps1 para poder ejecutarlo en powershell, para hacer una prueba rapida se puede desactivar temporalmente la directiva con este comando en administrador:

```powershell
powershell -ExecutionPolicy Bypass -File .\Get-InfoPC.ps1
```
