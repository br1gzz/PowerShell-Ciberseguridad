function Validar-Archivo {
    param (
        [Parameter(Mandatory=$true)]
        [string]$Ruta
        )
    
    try {
        if (Test-Path $Ruta) {
            $contenido = Get-Content $Ruta -ErrorAction Stop
            return "Archivo encontrado y accesible: $Ruta"
        } else {
            throw "El archivo no existe."
        }
    }
    catch {
        return "Error: $_"
    }
    finally {
        Write-Host "Validación finalizada para: $Ruta" -ForegroundColor Cyan
    }
}

# Prueba de la función
Validar-Archivo -Ruta 
#Asegúrate de crear un archivo txt con el nombre archivo en el Escritorio
Validar-Archivo -Ruta "$env:USERPROFILE\Escritorio\archivo.txt"