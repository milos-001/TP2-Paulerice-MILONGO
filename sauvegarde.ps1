<<<<<<< HEAD
$Destination = "E:\Backup"
=======
$Destination = "\\NAS01\Backup"
>>>>>>> feature/nas
# Journalisation activée
# Fin de sauvegarde
# Journalisation activee
# Fin de sauvegarde
# Compression des archives activee
# Modification temporaire

# Rotation des sauvegardes : suppression des fichiers de plus de 30 jours
$RetentionDays = 30
$DateLimite = (Get-Date).AddDays(-$RetentionDays)

Get-ChildItem -Path $Destination -File -Recurse |
    Where-Object { $_.LastWriteTime -lt $DateLimite } |
    Remove-Item -WhatIf
