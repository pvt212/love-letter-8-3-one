$folder = ".\assets\images\sphere"

$files = Get-ChildItem -Path $folder -File | Select-Object -ExpandProperty Name
$js = "const files = [" + (($files | ForEach-Object { "'$_'" }) -join ", ") + "];"

echo "$js"
