# API Client boilerplate template

A boilerplate API client template for those that want to build a .NET API clients wrappers

[![GitHub license](https://img.shields.io/github/license/{username}/{repo})](https://github.com/{username}/{repo})
[![Time tracker](https://wakatime.com/badge/github/{username}/{repo}.svg)](https://wakatime.com/badge/github/{username}/{repo})

![API Client Boilerplate](https://raw.githubusercontent.com/GuilhermeStracini/apiclient-boilerplate-dotnet/main/logo.png)

## CI/CD

| Build status | Last commit | Tests | Coverage | Code Smells | LoC | 
|--------------|-------------|-------|-------|-------|-------|
| [![Build status](https://ci.appveyor.com/api/projects/status/appVeyorId?svg=true)](https://ci.appveyor.com/project/{username}/{repo}) | [![GitHub last commit](https://img.shields.io/github/last-commit/{username}/{repo}/master)](https://github.com/{username}/{repo}) | [![AppVeyor tests (branch)](https://img.shields.io/appveyor/tests/{username}/{repo}/master?compact_message)](https://ci.appveyor.com/project/{username}/{repo}/branch/master/tests) | [![Coverage](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}-dotnet&metric=coverage&branch=master)](https://sonarcloud.io/dashboard?id={username}_{repo}-dotnet) | [![Code Smells](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}-dotnet&metric=code_smells&branch=master)](https://sonarcloud.io/dashboard?id={username}_{repo}-dotnet) | [![Lines of Code](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}-dotnet&metric=ncloc&branch=master)](https://sonarcloud.io/dashboard?id={username}_{repo}-dotnet) | 

## Code Quality (master branch)

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/codacyId)](https://www.codacy.com/gh/{username}/{repo}/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=g{username}/{repo}&amp;utm_campaign=Badge_Grade)
[![Codacy Badge](https://app.codacy.com/project/badge/Coverage/codacyId)](https://www.codacy.com/gh/{username}/{repo}/dashboard?utm_source=github.com&utm_medium=referral&utm_content={username}/{repo}&utm_campaign=Badge_Coverage)

[![codecov](https://codecov.io/gh/{username}/{repo}/branch/master/graph/badge.svg)](https://codecov.io/gh/{username}/{repo})
[![Known Vulnerabilities](https://snyk.io/test/github/{username}/{repo}/badge.svg)](https://snyk.io/test/github/{username}/{repo})

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=alert_status)](https://sonarcloud.io/dashboard?id={username}_{repo})
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=sqale_rating)](https://sonarcloud.io/dashboard?id={username}_{repo}-dotnet)

[![Technical Debt](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=sqale_index)](https://sonarcloud.io/dashboard?id={username}_{repo})
[![Duplicated Lines (%)](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=duplicated_lines_density)](https://sonarcloud.io/dashboard?id={username}_{repo}-dotnet)

[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=reliability_rating)](https://sonarcloud.io/dashboard?id={username}_{repo}-dotnet)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=security_rating)](https://sonarcloud.io/dashboard?id={username}_{repo}-dotnet)

[![Bugs](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=bugs)](https://sonarcloud.io/dashboard?id={username}_{repo})
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=vulnerabilities)](https://sonarcloud.io/dashboard?id={username}_{repo}-dotnet)

---

## Installation

### Github Releases

[![GitHub last release](https://img.shields.io/github/release-date/{username}/{repo}.svg?style=flat)](https://github.com/{username}/{repo}) [![Github All Releases](https://img.shields.io/github/downloads/{username}/{repo}/total.svg?style=flat)](https://github.com/{username}/{repo})

Download the latest zip file from the [Release](https://github.com/{username}/{repo}/releases) page.

### Nuget package manager

[![PacakgeName NuGet Version](https://img.shields.io/nuget/v/{packageName}.svg?style=flat)](https://www.nuget.org/packages/{packageName}/)
[![PacakgeName NuGet Downloads](https://img.shields.io/nuget/dt/{packageName}.svg?style=flat)](https://www.nuget.org/packages/{packageName}/)

| Package | Version | Downloads |
|------------------|:-------:|:-------:|
| **{packageName}** | [![{packageName} NuGet Version](https://img.shields.io/nuget/v/{packageName}.svg?style=flat)](https://www.nuget.org/packages/{packageName}/) | [![{packageName} NuGet Downloads](https://img.shields.io/nuget/dt/{packageName}.svg?style=flat)](https://www.nuget.org/packages/{packageName}/) |

---

## Features

Implements all features of Project name API available at [Project name](https://project.name.com/)

-  Feature #1
-  Feature #2
-  Feature #3
-  Feature #N

---

## Usage

```cs

//sample CSharp code showing how to use the lib
var client = new {packageName}Client();
client.CallSomeMethod();

```

---

Remove from this line to the end, after reading the **instructions below**

## Instructions on how to use this template

-  Change the *appveyor.yml* with your **token*s* (use a secure token) or use your prefered CI tool (Circle CI, GitHub Actions, Jenkins, Team City, Azure DevOps)
-  Change *SolutionName.sln* to your own solution/project name.
-  Change project name (**SolutionName.csproj** and **SolutionName.Tests.csproj**) and namespace inside folders **Src** and **Tests**.
-  Change the package name in the *SolutionName.csproj*.
-  Change the *main project* reference in the tests project in file *Tests/SolutionName.Tests.csproj*
-  Fix in the *readme* the path of the badges and remove this section. (change all *{username}/{repo}* tokens with your own data).
-  Add to *readme* usage instructions of your client/SDK.
-  Update _config.yml with project details (github.io docs website)
