🚀 .NET API Client Boilerplate

A modern, reusable template for building API client libraries and SDKs in C#/.NET. Get started quickly with a structured solution, automated setup scripts, testing projects, and continuous integration.

✨ Features
🏗️ Ready-to-use solution structure — Separate projects for the client library, unit tests, and integration tests.
⚙️ Automated setup — Initialize your project with platform-specific setup scripts.
🧪 Testing foundation — Organize unit and integration tests from day one.
🔄 CI/CD integration — Includes a sample AppVeyor configuration.
📦 NuGet-ready structure — Customize the main project for packaging and distribution.
📚 Documentation support — Includes configuration for GitHub Pages.
🎯 Customizable template — Adapt the solution to your API, naming conventions, and development workflow.
🚀 Getting Started
Prerequisites

Before you begin, make sure you have:

The .NET SDK required by the solution.
Git.
A GitHub account to create your repository from this template.
A code editor or IDE, such as Visual Studio or Visual Studio Code.
⚡ Quick Setup

The recommended approach is to use the repository as a GitHub template.

Open this repository on GitHub.
Click Use this template and create your new repository.
Clone your newly created repository:
git clone https://github.com/<username>/<repository>.git
cd <repository>

Run the appropriate setup script from the repository root.

Windows — Command Prompt

initial-setup.bat


Windows — PowerShell

.\initial-setup.ps1


Linux / macOS

chmod +x initial-setup.sh
./initial-setup.sh

Follow the script prompts to customize your solution.
Review the generated project names, namespaces, and configuration files before committing your changes.
Note: Run only the script appropriate for your environment. Review the script contents before executing them, especially if you have customized the template.
🛠️ Manual Setup

Prefer to configure everything yourself? Follow these steps.

1. Create your repository

Use the GitHub template feature and clone the resulting repository to your machine.

2. Customize the documentation
Replace the existing README.md with README.template.md, or merge the template contents into your preferred documentation.
Update the project description, installation instructions, usage examples, and repository links.
Replace placeholder values such as <username> and <repository>.
Update badge URLs to point to your own repository and CI pipeline.
3. Rename the solution and projects

Replace SolutionName with your chosen solution or project name wherever applicable.

Review and update:

SolutionName.sln
SolutionName.csproj
SolutionName.Tests.csproj
SolutionName.IntegrationTests.csproj
Namespaces and project references in the Src and Tests directories.

Ensure the solution file references the correct project paths after renaming.

4. Configure continuous integration

The repository includes an example appveyor.yml file for AppVeyor.

Customize the configuration to match your project, including:

.NET SDK and build configuration.
Restore, build, and test commands.
Test result reporting.
Package creation and publishing, if required.

You can also use GitHub Actions, CircleCI, or Azure DevOps for your CI/CD workflow.

Security tip: Store API keys, access tokens, and publishing credentials in your CI provider's secure environment or secret store. Never commit credentials to source control.

5. Update project configuration

Review the following files and settings:

File or location	What to update
appveyor.yml	Build, test, and deployment configuration
SolutionName.sln	Solution name and project paths
Main .csproj	Assembly name, package ID, metadata, and target framework
Test .csproj files	Project references and test dependencies
Src/	Client implementation and namespaces
Tests/	Unit and integration tests
README.md	Documentation, badges, and usage examples
_config.yml	GitHub Pages settings and site metadata
6. Verify the solution

After completing the configuration, restore dependencies, build the solution, and run the tests:

dotnet restore
dotnet build --no-restore
dotnet test


Run these commands against the solution file if the repository contains multiple solutions or the CLI cannot identify the intended solution automatically.

🧩 Recommended API Client Practices

When implementing your API client, consider the following practices:

Use HttpClient correctly. Prefer IHttpClientFactory and dependency injection for applications that use Microsoft's hosting and DI infrastructure.
Support asynchronous operations. Use async and await, and accept CancellationToken parameters where appropriate.
Handle errors consistently. Provide clear exceptions or structured error responses for unsuccessful HTTP requests.
Keep models explicit. Separate API request and response DTOs from internal implementation details when useful.
Make configuration straightforward. Support base URLs, authentication, and other API-specific settings.
Test without unnecessary network calls. Use mock HTTP handlers for unit tests and reserve integration tests for actual service interactions.
Protect credentials. Avoid logging access tokens, secrets, or sensitive request and response data.
Document public APIs. Include XML documentation and practical examples for consumers of the SDK.

These are recommendations for extending the template, not claims that every feature is already implemented.

🧪 Testing

Keep unit and integration tests separate so they serve distinct purposes.

Unit tests: Validate client behavior, serialization, request construction, and error handling in isolation.
Integration tests: Verify interactions with a real API or a dedicated test environment.

Run the test suite with:

dotnet test


For integration tests that require credentials or a running API, configure the required environment variables and service endpoints before execution.

📦 Packaging and NuGet

When your client is ready for distribution:

Set the package ID, version, authors, description, license, and repository metadata in the main project file.
Review your target frameworks and public API compatibility.
Create the package:
dotnet pack -c Release

Publish the generated .nupkg using your preferred NuGet publishing workflow.

Keep API keys and publishing tokens in a secure credential store or CI secrets.

See the NuGet package creation documentation for details.

📖 Documentation

This template includes _config.yml for configuring a GitHub Pages documentation site.

Update the site title, description, repository references, and other settings to match your project. Add installation instructions, authentication guidance, configuration examples, and API usage samples to help developers get started.

🤝 Contributing

Contributions, bug reports, and suggestions are welcome!

Fork the repository.
Create a branch for your changes.
Implement and test your changes.
Submit a pull request with a clear description.

For significant changes, consider opening an issue first to discuss the proposed approach.

📄 License

This template is described as being licensed under the MIT License. Confirm that the repository's LICENSE file contains the intended license before redistributing the project.

View the LICENSE file
Learn about the MIT License

If you choose a different license for your derived project, update the license file and relevant package metadata accordingly.

⭐ Support the Project

If this template helps you build your next .NET API client, consider starring the repository ⭐.

Have questions or ideas? Open an issue or contribute improvements to help make the template better for everyone.

Happy coding! Build reliable API clients with .NET and C#. 🔷
