# API Client boilerplate template

A boilerplate API client template for those that want to build a .NET API clients wrappers

## Instructions on how to use this template

> **Note**
> - Run the `initial-setup.bat` and follow the prompts
>
> OR
>
> -  Change the *appveyor.yml* with your **tokens** (use secure tokens) or use your preferred CI tool (Circle CI, GitHub Actions, Jenkins, Team City, Azure DevOps)
> -  Change *SolutionName.sln* to your solution/project name.
> -  Change project name (**SolutionName.csproj**, **SolutionName.UnitTests.csproj**, **SolutionName.IntegrationTests.csproj**) and namespace inside folders **Src** and **Tests**.
> -  Change the package name in the *SolutionName.csproj*.
> -  Change the *main project* reference in the tests project in files *Tests/SolutionName.UnitTests.csproj* and *Tests/SolutionName.IntegrationTests.csproj*
> -  Fix in the *readme* the path of the badges and remove this section. (change all *{username}/{repo}* tokens with your own data).
> -  Add to *readme* usage instructions of your client/SDK.
> -  Update _config.yml with project details (github.io docs website)

<!-- remove lines until this line -->

# {Project Name} SDK .NET

{Project Description}

[![GitHub license](https://img.shields.io/github/license/{username}/{repo})](https://github.com/{username}/{repo})
[![Time tracker](https://wakatime.com/badge/github/{username}/{repo}.svg)](https://wakatime.com/badge/github/{username}/{repo})

![{Project Name} logo](logo.png)

## CI/CD

| Build status | Last commit | Tests | Coverage | Code Smells | LoC | 
|--------------|-------------|-------|-------|-------|-------|
| [![Build status](https://ci.appveyor.com/api/projects/status/{appVeyorId}?svg=true)](https://ci.appveyor.com/project/{username}/{repo}) | [![GitHub last commit](https://img.shields.io/github/last-commit/{username}/{repo}/main)](https://github.com/{username}/{repo}) | [![AppVeyor tests (branch)](https://img.shields.io/appveyor/tests/{username}/{repo}/main?compact_message)](https://ci.appveyor.com/project/{username}/{repo}/branch/main/tests) | [![Coverage](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=coverage&branch=main)](https://sonarcloud.io/dashboard?id={username}_{repo}) | [![Code Smells](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=code_smells&branch=main)](https://sonarcloud.io/dashboard?id={username}_{repo}) | [![Lines of Code](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=ncloc&branch=main)](https://sonarcloud.io/dashboard?id={username}_{repo}) | 

## Code Quality (main branch)

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/{codacyId})](https://www.codacy.com/gh/{username}/{repo}/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=g{username}/{repo}&amp;utm_campaign=Badge_Grade)
[![Codacy Badge](https://app.codacy.com/project/badge/Coverage/{codacyId})](https://www.codacy.com/gh/{username}/{repo}/dashboard?utm_source=github.com&utm_medium=referral&utm_content={username}/{repo}&utm_campaign=Badge_Coverage)

[![codecov](https://codecov.io/gh/{username}/{repo}/branch/main/graph/badge.svg)](https://codecov.io/gh/{username}/{repo})
[![CodeFactor](https://www.codefactor.io/repository/github/{username}/{repo}/badge)](https://www.codefactor.io/repository/github/{username}/{repo})

[![Maintainability](https://api.codeclimate.com/v1/badges/{codeClimateId}/maintainability)](https://codeclimate.com/github/{username}/{repo}/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/{codeClimateId}/test_coverage)](https://codeclimate.com/github/{username}/{repo}/test_coverage)

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=alert_status)](https://sonarcloud.io/dashboard?id={username}_{repo})
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=sqale_rating)](https://sonarcloud.io/dashboard?id={username}_{repo})

[![Technical Debt](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=sqale_index)](https://sonarcloud.io/dashboard?id={username}_{repo})
[![Duplicated Lines (%)](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=duplicated_lines_density)](https://sonarcloud.io/dashboard?id={username}_{repo})

[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=reliability_rating)](https://sonarcloud.io/dashboard?id={username}_{repo})
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=security_rating)](https://sonarcloud.io/dashboard?id={username}_{repo})

[![Bugs](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=bugs)](https://sonarcloud.io/dashboard?id={username}_{repo})
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project={username}_{repo}&metric=vulnerabilities)](https://sonarcloud.io/dashboard?id={username}_{repo})

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

Implements all features of {Project Name} API available at [{Project Name}](https://project.name.com/)

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
