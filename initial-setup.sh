#!/bin/bash

# Prompt the user for input
read -p -r 'Project name (readable version): ' ProjectName
read -p -r 'Brief resume of this project: ' ProjectDescription
read -p -r 'Solution name / NuGet package name (SlugVersion): ' SolutionName
read -p -r 'GitHub username: ' GitHubUsername
read -p -r 'GitHub repository: ' GitHubRepo
read -p -r 'AppVeyor project ID (badge): ' AppVeyorId
read -p -r 'Codacy project ID (badge): ' CodacyId
read -p -r 'Code Climate project ID (badge): ' CodeClimateId
read -p -r 'Codebeat project UUID (badge): ' CodebeatId
read -p -r 'DeepSource project ID (badge): ' DeepSourceId
read -p -r 'Company/Author name (package copyright): ' CompanyName
read -p -r 'Codacy secure token (AppVeyor): ' CodacyToken
read -p -r 'Code Climate secure token (AppVeyor): ' CodeClimateToken
read -p -r 'API documentation URL: ' DocumentationWebsite

# Set file paths
MainProjectFile="Src/SolutionName/SolutionName.csproj"
IntegrationTestProjectFile="Tests/SolutionName.IntegrationTests/SolutionName.IntegrationTests.csproj"
UnitTestProjectFile="Tests/SolutionName.Tests/SolutionName.Tests.csproj"

InterfaceClientFile="Src/SolutionName/ISolutionNameClient.cs"
ClientFile="Src/SolutionName/SolutionNameClient.cs"

IntegrationTestClassFile="Tests/SolutionName.IntegrationTests/SolutionNameClientTests.cs"
UnitTestClassFile="Tests/SolutionName.Tests/SolutionNameClientTests.cs"

# Remove and rename files
rm README.md
mv "README.template.md" "README.md"

# Replace placeholders in README.md
sed -i "s/{username}/$GitHubUsername/g" README.md
sed -i "s/{repo}/$GitHubRepo/g" README.md
sed -i "s/{appVeyorId}/$AppVeyorId/g" README.md
sed -i "s/{codacyId}/$CodacyId/g" README.md
sed -i "s/{codeClimateId}/$CodeClimateId/g" README.md
sed -i "s/{codebeatId}/$CodebeatId/g" README.md
sed -i "s/{deepSourceId}/$DeepSourceId/g" README.md
sed -i "s/SolutionName/$SolutionName/g" README.md
sed -i "s/{PackageName}/$SolutionName/g" README.md
sed -i "s/{Project Name}/$ProjectName/g" README.md
sed -i "s/{Project Description}/$ProjectDescription/g" README.md
sed -i "s/https:\/\/project.name.com\//$DocumentationWebsite/" README.md

# Replace placeholders in .wakatime-project
sed -i "s/API Client Boilerplate .NET/$ProjectName SDK .NET/" .wakatime-project

# Replace placeholders in _config.yml
sed -i "s/API Client Boilerplate/$ProjectName/" _config.yml
sed -i "s/A template repository for .NET API clients projects./$ProjectDescription/" _config.yml
sed -i "s/GuilhermeStracini\/apiclient-boilerplate-dotnet/$GitHubUsername\/$GitHubRepo/" _config.yml

# Replace placeholders in appveyor.yml
sed -i "s/<secure token from Codacy>/$CodacyToken/" appveyor.yml
sed -i "s/<secure token from CodeClimate>/$CodeClimateToken/" appveyor.yml
# Replace placeholders in .cs and .csproj files
for file in $(find . -type f -name '*.cs*'); do
    sed -i "s/SolutionName/$SolutionName/" "$file"
done

for file in $(find . -type f -name '*.csproj*'); do
    sed -i "s/SolutionName/$SolutionName/" "$file"
done

# Rename solution file
sed -i "s/SolutionName/$SolutionName/" "SolutionName.sln"
mv "SolutionName.sln" "$SolutionName.sln"

# Replace placeholders in the main project file
sed -i "s/{username}/$GitHubUsername/" "$MainProjectFile"
sed -i "s/{repo}/$GitHubRepo/" "$MainProjectFile"
sed -i "s/{companyName}/$CompanyName/" "$MainProjectFile"
sed -i "s/{project description}/$ProjectDescription/" "$MainProjectFile"

# Rename client files
mv "$InterfaceClientFile" "I${SolutionName}Client.cs"
mv "$ClientFile" "${SolutionName}Client.cs"

# Rename test class files
mv "$IntegrationTestClassFile" "${SolutionName}ClientTests.cs"
mv "$UnitTestClassFile" "${SolutionName}ClientTests.cs"

# Rename project files
mv "$MainProjectFile" "Src/SolutionName/$SolutionName.csproj"
mv "$IntegrationTestProjectFile" "Tests/SolutionName.IntegrationTests/$SolutionName.IntegrationTests.csproj"
mv "$UnitTestProjectFile" "Tests/SolutionName.Tests/$SolutionName.Tests.csproj"

# Rename solution directories
mv "Src/SolutionName" "Src/$SolutionName"
mv "Tests/SolutionName.IntegrationTests" "Tests/$SolutionName.IntegrationTests"
mv "Tests/SolutionName.Tests" "Tests/$SolutionName.Tests"
# Remove initial-setup files
rm initial-setup.bat
rm initial-setup.ps1
rm initial-setup.sh
