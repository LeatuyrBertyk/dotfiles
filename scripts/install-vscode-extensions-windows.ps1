Write-Host "Ready to download VSCode extensions..."
Write-Host ""

# Required extension list
$extensions = @(
  "eamodio.gitlens"
  "esbenp.prettier-vscode"
  "fabian-hiller.pace-theme"
  "miguelsolorio.symbols"
  "ms-vscode.cmake-tools"
  "ms-vscode.cpp-devtools"
  "ms-vscode.cpptools"
  "ms-vscode.cpptools-extension-pack"
  "shd101wyy.markdown-preview-enhanced"
  "vscodevim.vim"
)

$installed = 0
$failed = 0

# Install each extension in list
foreach ($ext in $extensions) {
    Write-Host "Installing: $ext"

    try {
        & code --install-extension $ext 2>$null
        if ($LASTEXITCODE -eq 0) {
            Write-Host "   Success"
            $installed++
        }
        else {
            Write-Host "   Failed"
            $failed++
        }
    }
    catch {
        Write-Host "   Error: $_"
        $failed++
    }

    Write-Host ""
}

Write-Host ""
Write-Host "Installed: $installed"
Write-Host ""
Write-Host "Not installed: $failed"
