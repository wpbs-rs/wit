foreach ($f in Get-ChildItem -Path $PSScriptRoot -Recurse -Filter wkg.toml) {
  Push-Location $f.DirectoryName
  wkg fetch .
  Pop-Location
}
