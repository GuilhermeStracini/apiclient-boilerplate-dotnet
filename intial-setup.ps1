$ProjectName = Read-Host -Prompt 'Project name (readable version)'
$SolutionName = Read-Host -Prompt 'New solution name (SlugVersion)'
$GitHubUsername = Read-Host -Prompt 'GitHub username'
$GitHubRepo = Read-Host -Prompt 'GitHub repository'
$AppVeyorId = Read-Host -Prompt 'AppVeyor project ID'
$CompanyName = Read-Host -Prompt 'Company/Author name (package copyright)'

(Get-Content appveyor.yml) | ForEach-Object { $_ -replace "SolutionName", $SolutionName } | Set-Content appveyor.yml
(Get-Content README.md) | Select-Object -Skip 19 | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "{username}", $GitHubUsername } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "{repo}", $GitHubRepo } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "{appVeyorId}", $AppVeyorId } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "SolutionName", $SolutionName } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "API Client Boilerplate", $ProjectName } | Set-Content README.md
(Get-Content _config.yml) | ForEach-Object { $_ -replace "API Client Boilerplate", $ProjectName } | Set-Content _config.yml
(Get-Content README.md) | ForEach-Object { $_ -replace "GuilhermeStracini/apiclient-boilerplate-dotnet", "$GitHubUsername/$GitHubRepo" } | Set-Content README.md
(Get-Content _config.yml) | ForEach-Object { $_ -replace "GuilhermeStracini/apiclient-boilerplate-dotnet", "$GitHubUsername/$GitHubRepo" } | Set-Content _config.yml
(Get-ChildItem -Recurse -Include *.cs*) | ForEach-Object { 
    $Content = Get-Content $_
    $Content = $Content -replace "SolutionName", $SolutionName
    Set-Content -Path $_.fullname -Value $Content
}
(Get-Content SolutionName.sln) | ForEach-Object { $_ -replace "SolutionName", $SolutionName } | Set-Content ".\$SolutionName.sln"
Remove-Item SolutionName.sln
Remove-Item initial-setup.ps1
Remove-Item initial-setup.bat