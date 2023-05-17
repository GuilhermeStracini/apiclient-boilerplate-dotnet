$ProjectName = Read-Host -Prompt 'Project name (readable version)'
$SolutionName = Read-Host -Prompt 'New solution name (SlugVersion)'
$GitHubUsername = Read-Host -Prompt 'GitHub username'
$GitHubRepo = Read-Host -Prompt 'GitHub repository'
$AppVeyorId = Read-Host -Prompt 'AppVeyor project ID'
$CompanyName = Read-Host -Prompt 'Company/Author name (package copyright)'

(Get-Content README.md)  ForEach-Object { $_ -replace "{username}", $GitHubUsername }  Set-Content README.md
(Get-Content README.md)  ForEach-Object { $_ -replace "{repo}", $GitHubUserRepo }  Set-Content README.md
(Get-Content README.md)  ForEach-Object { $_ -replace "{appVeyorId}", $AppVeyorId }  Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "SolutionName", $SolutionName } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "GuilhermeStracini/apiclient-boilerplate-dotnet", "$GitHubUsername\$GitHubRepo" } | Set-Content README.md
(Get-ChildItem -Recurse -Include *.cs | Get-Content) | ForEach-Object { $_ -replace "SolutionName", $SolutionName } | Set-Content $_.Fullname
(Get-ChildItem -Recurse -Include *.csproj | Get-Content) | ForEach-Object { $_ -replace "SolutionName", $SolutionName } | Set-Content $_.Fullname.ToString().Replace('SolutionName', $SolutionName)
(Get-Content SolutionName.sln) | ForEach-Object { $_ -replace "SolutionName", $SolutionName } | Set-Content ".\$SolutionName.sln"
Remove-Item SOlutionName.sln
