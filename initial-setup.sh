#!/bin/bash

# Prompt the user for input
read -p 'Project name (readable version): ' ProjectName
read -p 'Brief resume of this project: ' ProjectDescription
read -p 'Solution name / NuGet package name (SlugVersion): ' SolutionName
read -p 'GitHub username: ' GitHubUsername
read -p 'GitHub repository: ' GitHubRepo
read -p 'AppVeyor project ID (badge): ' AppVeyorId
read -p 'Codacy project ID (badge): ' CodacyId
read -p 'Code Climate project ID (badge): ' CodeClimateId
read -p 'Codebeat project UUID (badge): ' CodebeatId
read -p 'DeepSource project ID (badge): ' DeepSourceId
read -p 'Company/Author name (package copyright): ' CompanyName
read -p 'Codacy secure token (AppVeyor): ' CodacyToken
read -p 'Code Climate secure token (AppVeyor): ' CodeClimateToken
read -p 'Sonar Cloud secure token (AppVeyor): ' SonarCloudToken
read -p 'API documentation URL: ' DocumentationWebsite

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
sed -i "s/<secure token from Sonar Cloud>/$SonarCloudToken/" appveyor.yml

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
mv "$MainProjectFile" "$SolutionName.csproj"
mv "$IntegrationTestProjectFile" "$SolutionName.IntegrationTests.csproj"
mv "$UnitTestProjectFile" "$SolutionName.Tests.csproj"

# Rename solution directiories
mv "Src/SolutionName" "$SolutionName"
mv "Tests/SolutionName.IntegrationTests" "$SolutionName.IntegrationTests"
mv "Tests/SolutionName.Tests" "$SolutionName.Tests"

# Remove initial-setup files
rm initial-setup.bat
rm initial-setup.ps1
rm initial-setup.sh
