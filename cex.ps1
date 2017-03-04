choco list -lo -r -y | % { $_.Split('|') | select -First 1 } | % { "choco install " + $_ + " -y" } > choco-install.ps1
