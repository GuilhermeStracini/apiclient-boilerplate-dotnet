# API Client boilerplate template

💡 🏗️ A boilerplate API client template for .NET API client wrappers

---

## About

This is a **template repository** that sets the basic code and infrastructure for a repository/solution in **.NET C#** to create an **API client wrapper** (sometimes known as **SDK**).

> [!Note]
>
> A [appveyor.yml](appveyor.yml) file is included for [AppVeyor](https://www.appveyor.com/) CI pipeline.
> AppVeyor is free for open-source projects.
> For closed-source projects, consider a paid subscription or other CI tools (GitHub Actions, CircleCI, TeamCity).

---

## Instructions

> [!Warning]
>
> The automated process listed below now supports **Windows** and **Linux/MAC** environments.

### Automated process

- Click on the green button **USE THIS TEMPLATE**
- Give a name to your new project/repository
- Clone your newly created repository to your machine
- Execute/run the file `initial-setup.bat` or `initial-setup.ps1` and follow the instructions on the prompt/terminal

### Manual process

- Click on the green button **USE THIS TEMPLATE**
- Give a name to your new project/repository
- Clone your newly created repository to your machine
- Delete this file (`README.md`) and rename `README.template.md` to `README.md`
- Change the `appveyor.yml` with your **tokens** (use secure tokens) or use your preferred CI tool (Circle CI, GitHub Actions, Jenkins, Team City, Azure DevOps)
- Change `SolutionName.sln` to your solution/project name
- Change project name (`SolutionName.csproj`, `SolutionName.Tests.csproj`, `SolutionName.IntegrationTests.csproj`) and namespace inside directories `Src` and `Tests`
- Change the package name in the `SolutionName.csproj` file
- Change the *main project* reference in the tests project in files `Tests/SolutionName.Tests.csproj` and `Tests/SolutionName.IntegrationTests.csproj`
- Fix in the `README.md` the path of the badges. (change all *{username}/{repo}* tokens with your own data)
- Add to `README.md` usage instructions of your client/SDK
- Update `_config.yml` with project details (github.io docs website)

---

## License

Licensed under: **MIT license** ([LICENSE](https://github.com/guibranco/apiclient-boilerplate-dotnet/blob/main/LICENSE) or [http://opensource.org/licenses/MIT](http://opensource.org/licenses/MIT)).

This will also be your project's **LICENSE**, but you can change it to another one that suits your needs.
