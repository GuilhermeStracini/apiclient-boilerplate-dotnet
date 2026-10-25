# 🚀 .NET API Client Boilerplate

A reusable .NET template for building API client libraries and SDKs.

The project provides a structured solution layout, automated setup scripts, testing projects, and continuous integration examples, enabling teams to focus on API integrations rather than project scaffolding.

> **Note**
>
> This repository provides a project foundation and does not implement API-specific functionality. Authentication, request models, business rules, and endpoint integrations should be added according to the requirements of the target API.

---

## ✨ Features

- 🏗️ **Ready-to-use solution structure** — Separate projects for the client library, unit tests, and integration tests.
- ⚙️ **Automated setup** — Initialize your project using platform-specific setup scripts.
- 🧪 **Testing support** — Establish unit and integration testing practices from the beginning of the project.
- 🔄 **CI/CD integration** — Includes a sample AppVeyor configuration that can be adapted to your preferred platform.
- 📦 **NuGet-ready structure** — Configure packaging and distribution with minimal effort.
- 📚 **Documentation site configuration** — Includes GitHub Pages configuration for project documentation.
- 🎯 **Flexible customization** — Adapt naming conventions, namespaces, and project settings to your requirements.

---

## 📋 Prerequisites

Before getting started, ensure the following tools are available:

- .NET SDK compatible with the target framework used by the solution.
- Git.
- A GitHub account.
- A code editor or IDE, such as:
  - Visual Studio
  - Visual Studio Code
  - JetBrains Rider

---

## ⚡ Quick Setup

The recommended approach is to create a new repository from this template and customize it for your API client implementation.

### 1. Create a Repository

1. Open this repository on GitHub.
2. Select **Use this template**.
3. Create a new repository from the template.

### 2. Clone the Repository

```bash
git clone https://github.com/<username>/<repository>.git
cd <repository>
```

### 3. Run the Setup Script

Execute the appropriate setup script from the repository root.

#### Windows (Command Prompt)

```cmd
initial-setup.bat
```

#### Windows (PowerShell)

```powershell
.\initial-setup.ps1
```

#### Linux / macOS

```bash
chmod +x initial-setup.sh
./initial-setup.sh
```

### 4. Review the Generated Configuration

After running the setup script:

- Verify solution and project names.
- Review namespaces.
- Validate project references.
- Inspect generated configuration files.
- Confirm that documentation has been updated correctly.

> **Important**
>
> Run only the script appropriate for your operating system. Review the script contents before execution, particularly if the template has been customized.

---

## 🛠️ Manual Setup

If you prefer not to use the automated setup scripts, complete the following steps manually.

### 1. Create Your Repository

Create a repository from the GitHub template and clone it locally.

### 2. Customize the Documentation

Use `README.template.md` as the starting point for your project documentation.

Update:

- Project description.
- Installation instructions.
- Usage examples.
- Repository and documentation links.
- Build and test badges.

Replace placeholder values such as:

```text
<username>
<repository>
```

with the appropriate values for your project.

---

### 3. Rename the Solution and Projects

Replace `SolutionName` with your chosen project name throughout the repository.

Review and update:

```text
SolutionName.sln
SolutionName.csproj
SolutionName.Tests.csproj
SolutionName.IntegrationTests.csproj
```

Also update:

- Namespaces.
- Project references.
- Folder names if necessary.
- Build and deployment configuration files.

Ensure the solution file references the correct project paths after renaming.

---

### 4. Configure Continuous Integration

A sample `appveyor.yml` file is provided as a starting point.

Adapt the pipeline as required:

- .NET SDK version.
- Restore steps.
- Build steps.
- Test execution.
- Test reporting.
- NuGet packaging and publication.

Alternative CI/CD platforms include:

- GitHub Actions
- Azure DevOps
- CircleCI
- GitLab CI

> **Security**
>
> Store API keys, access tokens, and publishing credentials using your CI provider's secret management features. Never commit credentials to source control.

---

### 5. Update Project Configuration

Review the following files and settings:

| File or Location | Purpose |
|------------------|----------|
| `appveyor.yml` | Build, test, and deployment settings |
| `SolutionName.sln` | Solution definition and project paths |
| Main `.csproj` | Package metadata, assembly name, version, and target frameworks |
| Test `.csproj` files | Test dependencies and project references |
| `Src/` | Client implementation |
| `Tests/` | Unit and integration tests |
| `README.md` | Project documentation |
| `_config.yml` | GitHub Pages configuration |

---

### 6. Verify the Solution

Restore packages, build the solution, and execute tests:

```bash
dotnet restore
dotnet build --no-restore
dotnet test
```

If multiple solution files exist, specify the target `.sln` file explicitly.

---

## 🔐 Authentication

This template does not enforce a specific authentication strategy.

Depending on the target API, you may implement support for:

- API Keys
- Bearer Tokens (JWT)
- OAuth 2.0
- Basic Authentication
- Mutual TLS (mTLS)
- Custom authentication mechanisms

Authentication concerns should remain configurable and isolated from the client implementation whenever possible.

---

## 🧩 API Client Development Guidelines

When implementing your API client library, consider the following practices.

### Use HttpClient Correctly

Prefer `IHttpClientFactory` and dependency injection for applications built on Microsoft's hosting and dependency injection infrastructure.

### Support Asynchronous Operations

Use `async` and `await` consistently and expose `CancellationToken` parameters where cancellation is meaningful.

### Handle Errors Consistently

Provide predictable error handling through exceptions, result objects, or a clearly documented strategy.

### Keep Models Explicit

Separate API request and response DTOs from internal implementation models when appropriate.

### Simplify Configuration

Provide straightforward configuration options for:

- Base URLs
- Authentication
- Timeouts
- Retry policies
- API-specific settings

### Support Resiliency Strategies

Consider implementing:

- Retries
- Exponential backoff
- Timeouts
- Rate-limit handling
- Circuit breakers

Libraries such as Polly can help implement these patterns.

### Favor Testability

Structure the project to support automated testing.

Use mock HTTP handlers for unit tests and reserve live HTTP communication for integration tests.

### Protect Credentials

Avoid logging:

- Access tokens
- Secrets
- API keys
- Sensitive request or response data

### Document Public APIs

Provide XML documentation comments and practical usage examples for consumers of the library.

> These recommendations are intended to guide development and are not claims that every capability is implemented by the template.

---

## 🧪 Testing

Unit and integration tests should be maintained separately to serve distinct purposes.

### Unit Tests

Validate:

- Request generation
- Serialization and deserialization
- Client behavior
- Error handling
- Validation logic

without relying on external services.

### Integration Tests

Validate:

- End-to-end interactions
- Authentication flows
- API compatibility
- Real-world response handling

against a real API or dedicated test environment.

Run the test suite using:

```bash
dotnet test
```

If integration tests require credentials or external services, configure the appropriate environment variables and endpoints before execution.

---

## 📦 Packaging and NuGet

Before publishing a package, ensure that:

- Package metadata is complete and accurate.
- XML documentation generation is enabled.
- Public APIs have been reviewed for compatibility.
- License information is configured correctly.
- Repository URLs have been configured.
- Versioning follows your chosen release strategy.

### Create a Package

```bash
dotnet pack -c Release
```

### Publish a Package

Publish the generated `.nupkg` file using your preferred NuGet publishing workflow.

Keep API keys and publishing tokens in a secure credential store or your CI/CD platform's secrets management system.

---

## 📖 Documentation

This template includes a `_config.yml` file for configuring documentation hosted with GitHub Pages.

Documentation should include:

- Installation instructions
- Authentication guidance
- Configuration examples
- API usage scenarios
- Code samples
- Troubleshooting guidance
- Release and migration notes

Well-maintained documentation significantly improves the adoption and maintainability of SDKs and client libraries.

---

## 🤝 Contributing

Contributions are welcome and help improve the project for the entire community.

To contribute:

1. Fork the repository.
2. Create a feature branch.
3. Implement your changes.
4. Execute the test suite.
5. Submit a Pull Request with a clear description of the changes.

For significant modifications, consider opening an issue first to discuss the proposed approach.

---

## 📄 License

This project is distributed under the terms of the MIT License.

Before redistributing the template or publishing derivative work:

- Verify the contents of the `LICENSE` file.
- Update license metadata if you choose to adopt a different license.
- Ensure NuGet package metadata reflects the selected license.

For additional details, see:

- `LICENSE`
- MIT License documentation

---

## ⭐ Support the Project

If this template helps your team build API client libraries or SDKs, consider starring the repository.

Feedback, bug reports, and improvement suggestions are always appreciated.

Thank you for using and supporting the project.
🚀 .NET API Client Boilerplate
A reusable .NET template for building API client libraries and SDKs.
The project provides a structured solution layout, automated setup scripts, testing projects, and continuous integration examples, enabling teams to focus on API integrations rather than project scaffolding.
Note
This repository provides a project foundation and does not implement API-specific functionality. Authentication, request models, business rules, and endpoint integrations should be added according to the requirements of the target API.
✨ Features
🏗️ Ready-to-use solution structure — Separate projects for the client library, unit tests, and integration tests.
⚙️ Automated setup — Initialize your project using platform-specific setup scripts.
🧪 Testing support — Establish unit and integration testing practices from the beginning of the project.
🔄 CI/CD integration — Includes a sample AppVeyor configuration that can be adapted to your preferred platform.
📦 NuGet-ready structure — Configure packaging and distribution with minimal effort.
📚 Documentation site configuration — Includes GitHub Pages configuration for project documentation.
🎯 Flexible customization — Adapt naming conventions, namespaces, and project settings to your requirements.
📋 Prerequisites
Before getting started, ensure the following tools are available:
.NET SDK compatible with the target framework used by the solution.
Git.
A GitHub account.
A code editor or IDE, such as:
Visual Studio
Visual Studio Code
JetBrains Rider
⚡ Quick Setup
The recommended approach is to create a new repository from this template and customize it for your API client implementation.
1. Create a Repository
Open this repository on GitHub.
Select Use this template.
Create a new repository from the template.
2. Clone the Repository
git clone https://github.com/<username>/<repository>.git
cd <repository>
3. Run the Setup Script
Execute the appropriate setup script from the repository root.
Windows (Command Prompt)
initial-setup.bat
Windows (PowerShell)
.\initial-setup.ps1
Linux / macOS
chmod +x initial-setup.sh
./initial-setup.sh
4. Review the Generated Configuration
After running the setup script:
Verify solution and project names.
Review namespaces.
Validate project references.
Inspect generated configuration files.
Confirm that documentation has been updated correctly.
Important
Run only the script appropriate for your operating system. Review the script contents before execution, particularly if the template has been customized.
🛠️ Manual Setup
If you prefer not to use the automated setup scripts, complete the following steps manually.
1. Create Your Repository
Create a repository from the GitHub template and clone it locally.
2. Customize the Documentation
Use README.template.md as the starting point for your project documentation.
Update:
Project description.
Installation instructions.
Usage examples.
Repository and documentation links.
Build and test badges.
Replace placeholder values such as:
<username>
<repository>
with the appropriate values for your project.
3. Rename the Solution and Projects
Replace SolutionName with your chosen project name throughout the repository.
Review and update:
SolutionName.sln
SolutionName.csproj
SolutionName.Tests.csproj
SolutionName.IntegrationTests.csproj
Also update:
Namespaces.
Project references.
Folder names if necessary.
Build and deployment configuration files.
Ensure the solution file references the correct project paths after renaming.
4. Configure Continuous Integration
A sample appveyor.yml file is provided as a starting point.
Adapt the pipeline as required:
.NET SDK version.
Restore steps.
Build steps.
Test execution.
Test reporting.
NuGet packaging and publication.
Alternative CI/CD platforms include:
GitHub Actions
Azure DevOps
CircleCI
GitLab CI
Security
Store API keys, access tokens, and publishing credentials using your CI provider's secret management features. Never commit credentials to source control.
5. Update Project Configuration
Review the following files and settings:
File or Location
Purpose
appveyor.yml
Build, test, and deployment settings
SolutionName.sln
Solution definition and project paths
Main .csproj
Package metadata, assembly name, version, and target frameworks
Test .csproj files
Test dependencies and project references
Src/
Client implementation
Tests/
Unit and integration tests
README.md
Project documentation
_config.yml
GitHub Pages configuration
6. Verify the Solution
Restore packages, build the solution, and execute tests:
dotnet restore
dotnet build --no-restore
dotnet test
If multiple solution files exist, specify the target .sln file explicitly.
🔐 Authentication
This template does not enforce a specific authentication strategy.
Depending on the target API, you may implement support for:
API Keys
Bearer Tokens (JWT)
OAuth 2.0
Basic Authentication
Mutual TLS (mTLS)
Custom authentication mechanisms
Authentication concerns should remain configurable and isolated from the client implementation whenever possible.
🧩 API Client Development Guidelines
When implementing your API client library, consider the following practices.
Use HttpClient Correctly
Prefer IHttpClientFactory and dependency injection for applications built on Microsoft's hosting and dependency injection infrastructure.
Support Asynchronous Operations
Use async and await consistently and expose CancellationToken parameters where cancellation is meaningful.
Handle Errors Consistently
Provide predictable error handling through exceptions, result objects, or a clearly documented strategy.
Keep Models Explicit
Separate API request and response DTOs from internal implementation models when appropriate.
Simplify Configuration
Provide straightforward configuration options for:
Base URLs
Authentication
Timeouts
Retry policies
API-specific settings
Support Resiliency Strategies
Consider implementing:
Retries
Exponential backoff
Timeouts
Rate-limit handling
Circuit breakers
Libraries such as Polly can help implement these patterns.
Favor Testability
Structure the project to support automated testing.
Use mock HTTP handlers for unit tests and reserve live HTTP communication for integration tests.
Protect Credentials
Avoid logging:
Access tokens
Secrets
API keys
Sensitive request or response data
Document Public APIs
Provide XML documentation comments and practical usage examples for consumers of the library.
These recommendations are intended to guide development and are not claims that every capability is implemented by the template.
🧪 Testing
Unit and integration tests should be maintained separately to serve distinct purposes.
Unit Tests
Validate:
Request generation
Serialization and deserialization
Client behavior
Error handling
Validation logic
without relying on external services.
Integration Tests
Validate:
End-to-end interactions
Authentication flows
API compatibility
Real-world response handling
against a real API or dedicated test environment.
Run the test suite using:
dotnet test
If integration tests require credentials or external services, configure the appropriate environment variables and endpoints before execution.
🧪 FIRST Testing Principles
The test suite should follow the FIRST principles so that failures are fast to diagnose and results remain reliable in local development and CI.
Principle
Requirement
Application in this project
Fast
Tests execute quickly.
Unit tests use a fake HttpMessageHandler; they do not call live APIs or wait on network timeouts.
Independent
Tests do not depend on one another.
Each test creates its own client, handler, and input data. Do not depend on test order or shared mutable state.
Repeatable
Results are consistent across environments.
Use deterministic responses, fixed test data, and no production credentials or uncontrolled external services.
Self-validating
Pass/fail is automatic.
Assert status codes, request URI, HTTP method, headers, payloads, and deserialized values. Avoid manual inspection of console output.
Timely
Tests are written with the implementation.
Add or update unit tests when introducing or changing client behavior; keep tests close to the code they protect.
Recommended Test Structure
Keep fast unit tests separate from integration tests that contact a real API. Suggested organization:
SolutionName.Tests/
├── Unit/
│   ├── ApiClientTests.cs
│   ├── RequestSerializationTests.cs
│   └── ErrorHandlingTests.cs
└── Integration/
    └── ApiClientIntegrationTests.cs
Adapt these names to the actual solution structure. Do not create duplicate projects if equivalent projects already exist.
Unit Test Checklist
For each client operation, cover the relevant cases:
[ ]
Correct HTTP method and request URI are generated.
[ ]
Required headers, including authentication headers, are sent without exposing secrets in logs.
[ ]
Request bodies serialize correctly.
[ ]
Successful responses deserialize to the expected model.
[ ]
Non-success status codes follow the documented error strategy.
[ ]
Empty, malformed, or unexpected responses are handled predictably.
[ ]
Cancellation is propagated when a CancellationToken is supplied.
[ ]
Each test passes alone and when the complete suite is run.
Example: Test HTTP Behavior Without Network Access
The following xUnit example demonstrates a fake handler. It is a pattern to adapt to the real client API; it is not a claim that these types already exist in this template.
using System.Net;
using Xunit;

public sealed class StubHttpMessageHandler : HttpMessageHandler
{
    private readonly HttpResponseMessage _response;
    public HttpRequestMessage? LastRequest { get; private set; }

    public StubHttpMessageHandler(HttpResponseMessage response)
    {
        _response = response;
    }

    protected override Task<HttpResponseMessage> SendAsync(
        HttpRequestMessage request, CancellationToken cancellationToken)
    {
        LastRequest = request;
        return Task.FromResult(_response);
    }
}

public sealed class HttpClientBehaviorTests
{
    [Fact]
    public async Task Sends_expected_method_and_uri()
    {
        var handler = new StubHttpMessageHandler(
            new HttpResponseMessage(HttpStatusCode.OK));
        using var httpClient = new HttpClient(handler)
        {
            BaseAddress = new Uri("https://api.example.test/")
        };

        using var response = await httpClient.GetAsync("v1/items");

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);
        Assert.NotNull(handler.LastRequest);
        Assert.Equal(HttpMethod.Get, handler.LastRequest!.Method);
        Assert.Equal(new Uri("https://api.example.test/v1/items"),
            handler.LastRequest.RequestUri);
    }
}
This sample tests HttpClient request construction, not the project's API client wrapper. Add equivalent tests around the actual public client methods once they are implemented. Ensure the test project references the chosen framework (for example, xUnit) and a compatible .NET target framework.
Run Tests
Run unit tests during development:
dotnet test --no-restore
Run the full solution test suite in CI after restore and build:
dotnet restore
dotnet build --no-restore --configuration Release
dotnet test --no-build --configuration Release
If integration tests require credentials or external services, mark and configure them separately so the fast unit-test suite remains deterministic. Never put API keys, tokens, or production secrets in test source code.
Validation note: The README describes recommended testing practices. Confirm the actual test framework, target framework, project references, and CI commands against the repository files before treating this guidance as executable project configuration.
📦 Packaging and NuGet
Before publishing a package, ensure that:
Package metadata is complete and accurate.
XML documentation generation is enabled.
Public APIs have been reviewed for compatibility.
License information is configured correctly.
Repository URLs have been configured.
Versioning follows your chosen release strategy.
Create a Package
dotnet pack -c Release
Publish a Package
Publish the generated .nupkg file using your preferred NuGet publishing workflow.
Keep API keys and publishing tokens in a secure credential store or your CI/CD platform's secrets management system.
📖 Documentation
This template includes a _config.yml file for configuring documentation hosted with GitHub Pages.
Documentation should include:
Installation instructions
Authentication guidance
Configuration examples
API usage scenarios
Code samples
Troubleshooting guidance
Release and migration notes
Well-maintained documentation significantly improves the adoption and maintainability of SDKs and client libraries.
🤝 Contributing
Contributions are welcome and help improve the project for the entire community.
To contribute:
Fork the repository.
Create a feature branch.
Implement your changes.
Execute the test suite.
Submit a Pull Request with a clear description of the changes.
For significant modifications, consider opening an issue first to discuss the proposed approach.
📄 License
This project is distributed under the terms of the MIT License.
Before redistributing the template or publishing derivative work:
Verify the contents of the LICENSE file.
Update license metadata if you choose to adopt a different license.
Ensure NuGet package metadata reflects the selected license.
For additional details, see:
LICENSE
MIT License documentation
⭐ Support the Project
If this template helps your team build API client libraries or SDKs, consider starring the repository.
Feedback, bug reports, and improvement suggestions are always appreciated.
Thank you for using and supporting the project.