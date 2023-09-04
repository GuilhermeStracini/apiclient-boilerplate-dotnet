$ProjectName = Read-Host -Prompt 'Project name (readable version)'
$ProjectDescription = Read-Host -Prompt 'Brief resume of this project'
$SolutionName = Read-Host -Prompt 'Solution name / NuGet package name (SlugVersion)'
$GitHubUsername = Read-Host -Prompt 'GitHub username'
$GitHubRepo = Read-Host -Prompt 'GitHub repository'
$AppVeyorId = Read-Host -Prompt 'AppVeyor project ID'
$CodacyId = Read-Host -Prompt 'Codacy project ID'
$CodeClimateId = Read-Host -Prompt 'Code Climate project ID'
$CompanyName = Read-Host -Prompt 'Company/Author name (package copyright)'
$CodacyToken = Read-Host -Prompt 'Codacy secure token (AppVeyor)'
$CodeClimateToken = Read-Host -Prompt 'Code Climate secure token (AppVeyor)'
$SonarCloudToken = Read-Host -Prompt 'Sonar Cloud secure token (AppVeyor)'
$DocumentationWebsite = Read-Host -Prompt 'API documentation URL'

$MainProjectFile = "Src/SolutionName/SolutionName.csproj"
$IntegrationTestProjectFile = "Tests/SolutionName.IntegrationTests/SolutionName.IntegrationTests.csproj"
$UnitTestProjectFile = "Tests/SolutionName.UnitTests/SolutionName.UnitTests.csproj"

(Get-Content README.md) | Select-Object -Skip 23 | Set-Content README.md

(Get-Content README.md) | ForEach-Object { $_ -replace "{username}", $GitHubUsername } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "{repo}", $GitHubRepo } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "{appVeyorId}", $AppVeyorId } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "{codacyId}", $CodacyId } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "{codeClimateId}", $CodeClimateId } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "SolutionName", $SolutionName } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "{PackageName}", $SolutionName } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "{Project Name}", $ProjectName } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "{Project Description}", $ProjectDescription } | Set-Content README.md
(Get-Content README.md) | ForEach-Object { $_ -replace "https://project.name.com/", $DocumentationWebsite } | Set-Content README.md

(Get-Content .wakatime-project) | ForEach-Object { $_ -replace "API Client Boilerplate .NET", "$ProjectName SDK .NET" } | Set-Content .wakatime-project

(Get-Content _config.yml) | ForEach-Object { $_ -replace "API Client Boilerplate", $ProjectName } | Set-Content _config.yml
(Get-Content _config.yml) | ForEach-Object { $_ -replace "A template repository for .NET API clients projects.", $ProjectDescription } | Set-Content _config.yml
(Get-Content _config.yml) | ForEach-Object { $_ -replace "GuilhermeStracini/apiclient-boilerplate-dotnet", "$GitHubUsername/$GitHubRepo" } | Set-Content _config.yml

(Get-Content appveyor.yml) | ForEach-Object { $_ -replace "<secure token from Codacy>", $CodacyToken } | Set-Content appveyor.yml
(Get-Content appveyor.yml) | ForEach-Object { $_ -replace "<secure token from CodeClimate>", $CodeClimateToken } | Set-Content appveyor.yml
(Get-Content appveyor.yml) | ForEach-Object { $_ -replace "<secure token from Sonar Cloud>", $SonarCloudToken } | Set-Content appveyor.yml

(Get-ChildItem -Recurse -Include *.cs*) | ForEach-Object { 
    $Content = Get-Content $_
    $Content = $Content -replace "SolutionName", $SolutionName
    Set-Content -Path $_.fullname -Value $Content
}

(Get-ChildItem -Recurse -Include *.csproj*) | ForEach-Object { 
    $Content = Get-Content $_
    $Content = $Content -replace "SolutionName", $SolutionName
    Set-Content -Path $_.fullname -Value $Content
}

(Get-Content SolutionName.sln) | ForEach-Object { $_ -replace "SolutionName", $SolutionName } | Set-Content SolutionName.sln
Rename-Item -Path ".\SolutionName.sln" ".\$SolutionName.sln"

(Get-Content $MainProjectFile) | ForEach-Object { $_ -replace "{username}", $GitHubUsername } | Set-Content $MainProjectFile
(Get-Content $MainProjectFile) | ForEach-Object { $_ -replace "{repo}", $GitHubRepo } | Set-Content $MainProjectFile
(Get-Content $MainProjectFile) | ForEach-Object { $_ -replace "{companyName}", $CompanyName } | Set-Content $MainProjectFile
(Get-Content $MainProjectFIle) | ForEach-Object { $_ -replace "{project description}", $ProjectDescription } | Set-Content $MainProjectFile

Rename-Item -Path $MainProjectFile -NewName "$SolutionName.csproj"
Rename-Item -Path $IntegrationTestProjectFile -NewName "$SolutionName.IntegrationTests.csproj"
Rename-Item -Path $UnitTestProjectFile -NewName "$SolutionName.UnitTests.csproj"

Rename-Item -Path "Src/SolutionName" "$SolutionName"
Rename-Item -Path "Tests/SolutionName.IntegrationTests" "$SolutionName.IntegrationTests"
Rename-Item -Path "Tests/SolutionName.UnitTests" "$SolutionName.UnitTests"

Remove-Item initial-setup.bat
Remove-Item initial-setup.ps1
