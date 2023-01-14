# API Client boilerplate template

A boilerplate API client template for those that want to build a .Net API clients wrappers

[![GitHub license](https://img.shields.io/github/license/GuilhermeStracini/apiclient-boilerplate-dotnet)](https://github.com/GuilhermeStracini/apiclient-boilerplate-dotnet)
[![Time tracker](https://wakatime.com/badge/github/GuilhermeStracini/apiclient-boilerplate-dotnet.svg)](https://wakatime.com/badge/github/GuilhermeStracini/apiclient-boilerplate-dotnet)

![API Client Boilerplate](https://raw.githubusercontent.com/GuilhermeStracini/apiclient-boilerplate-dotnet/main/logo.png)

## CI/CD

| Build status | Last commit | Tests | Coverage | Code Smells | LoC | 
|--------------|-------------|-------|-------|-------|-------|
| [![Build status](https://ci.appveyor.com/api/projects/status/appVeyorId?svg=true)](https://ci.appveyor.com/project/USER/REPOSITORY) | [![GitHub last commit](https://img.shields.io/github/last-commit/GuilhermeStracini/apiclient-boilerplate-dotnet/master)](https://github.com/GuilhermeStracini/apiclient-boilerplate-dotnet) | ![AppVeyor tests (branch)](https://img.shields.io/appveyor/tests/GuilhermeStracini/apiclient-boilerplate-dotnet/master?compact_message) | [![Coverage](https://sonarcloud.io/api/project_badges/measure?project=GuilhermeStracini_apiclient-boilerplate-dotnet&metric=coverage&branch=master)](https://sonarcloud.io/dashboard?id=GuilhermeStracini_apiclient-boilerplate-dotnet) | [![Code Smells](https://sonarcloud.io/api/project_badges/measure?project=GuilhermeStracini_apiclient-boilerplate-dotnet&metric=code_smells&branch=master)](https://sonarcloud.io/dashboard?id=GuilhermeStracini_apiclient-boilerplate-dotnet) | [![Lines of Code](https://sonarcloud.io/api/project_badges/measure?project=GuilhermeStracini_apiclient-boilerplate-dotnet&metric=ncloc&branch=master)](https://sonarcloud.io/dashboard?id=GuilhermeStracini_apiclient-boilerplate-dotnet) | 

## Code Quality (master branch)

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/codacyId)](https://www.codacy.com/gh/GuilhermeStracini/apiclient-boilerplate-dotnet/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=gGuilhermeStracini/apiclient-boilerplate-dotnet&amp;utm_campaign=Badge_Grade)
[![codecov](https://codecov.io/gh/GuilhermeStracini/apiclient-boilerplate-dotnet/branch/master/graph/badge.svg)](https://codecov.io/gh/GuilhermeStracini/apiclient-boilerplate-dotnet)

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=GuilhermeStracini_apiclient-boilerplate&metric=alert_status)](https://sonarcloud.io/dashboard?id=GuilhermeStracini_apiclient-boilerplate)
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=GuilhermeStracini_apiclient-boilerplate&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=GuilhermeStracini_apiclient-boilerplate-dotnet)

[![Technical Debt](https://sonarcloud.io/api/project_badges/measure?project=GuilhermeStracini_apiclient-boilerplate&metric=sqale_index)](https://sonarcloud.io/dashboard?id=GuilhermeStracini_apiclient-boilerplate)
[![Duplicated Lines (%)](https://sonarcloud.io/api/project_badges/measure?project=GuilhermeStracini_apiclient-boilerplate&metric=duplicated_lines_density)](https://sonarcloud.io/dashboard?id=GuilhermeStracini_apiclient-boilerplate-dotnet)

[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=GuilhermeStracini_apiclient-boilerplate&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=GuilhermeStracini_apiclient-boilerplate-dotnet)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=GuilhermeStracini_apiclient-boilerplate&metric=security_rating)](https://sonarcloud.io/dashboard?id=GuilhermeStracini_apiclient-boilerplate-dotnet)

[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=GuilhermeStracini_apiclient-boilerplate&metric=bugs)](https://sonarcloud.io/dashboard?id=GuilhermeStracini_apiclient-boilerplate)
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=GuilhermeStracini_apiclient-boilerplate&metric=vulnerabilities)](https://sonarcloud.io/dashboard?id=GuilhermeStracini_apiclient-boilerplate-dotnet)

---

## Installation

### Github Releases

[![GitHub last release](https://img.shields.io/github/release-date/GuilhermeStracini/apiclient-boilerplate-dotnet.svg?style=flat)](https://github.com/GuilhermeStracini/apiclient-boilerplate-dotnet) [![Github All Releases](https://img.shields.io/github/downloads/GuilhermeStracini/apiclient-boilerplate-dotnet/total.svg?style=flat)](https://github.com/GuilhermeStracini/apiclient-boilerplate-dotnet)

Download the latest zip file from the [Release](https://github.com/GuilhermeStracini/apiclient-boilerplate-dotnet/releases) page.

### Nuget package manager

[![PacakgeName NuGet Version](https://img.shields.io/nuget/v/PackageName.svg?style=flat)](https://www.nuget.org/packages/PackageName/)
[![PacakgeName NuGet Downloads](https://img.shields.io/nuget/dt/PackageName.svg?style=flat)](https://www.nuget.org/packages/PackageName/)

NuGet URL: [https://www.nuget.org/packages/PackageName](https://www.nuget.org/packages/PackageName)

NuGet installation via *Package Manager Console*:

```ps

Install-Package PackageName

```

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
var client = new PackageNameClient();
client.CallSomeMethod();

```

---

Remove from this line to the end, after reading the **instructions below**

## Instructions on how to use this template

-  Change the *appveyor.yml* with your **token*s* (use a secure token).
-  Change *SolutionName.sln* to your own solution/project name.
-  Change project name (**SolutionName.csproj** and **SolutionName.Tests.csproj**) and namespace inside folders **Src** and **Tests**.
-  Change the package name in the *SolutionName.csproj*.
-  Change the *main project* reference in the tests project in file *Tests/SolutionName.Tests.csproj*
-  Fix in the *readme* the path of the badges and remove this section.
-  Add to *readme* usage instructions of your client/SDK.
-  Update _config.yml with project details (github.io docs website)
