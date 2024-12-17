# 🚀 API Client Boilerplate Template 🎯

🏗️ **A modern and easy-to-use boilerplate for building .NET API client wrappers** (also known as **SDKs**).  

---

## 🌟 About

This repository is a **template** designed to kickstart your journey in creating robust **API client wrappers** using **.NET C#**.  
Save time and effort with a preconfigured solution that includes essential tools and CI pipeline setup.

🔧 Key features:  
- 🛠️ **.NET Solution Setup**: Ready-to-use structure for source code, unit tests, and integration tests.  
- ✅ **CI Integration**: Includes a sample [AppVeyor](https://www.appveyor.com/) CI pipeline configuration with `appveyor.yml`.  
   > 💡 **Tip**: AppVeyor is free for open-source projects. For private repositories, consider alternatives like **GitHub Actions**, **CircleCI**, or **Azure DevOps**.  

---

## 🚀 Getting Started

### ⚡ Automated Setup

Follow these quick steps for a hassle-free experience:

1. Click the green **"Use this template"** button at the top.  
2. Name your new repository and clone it to your machine.  
3. Run the initial setup script:  
   - On Windows: Execute `initial-setup.bat`  
   - On PowerShell: Execute `initial-setup.ps1`
   - On Linux/Mac: Execute `initial-setup.sh`
4. Follow the prompts and enjoy! 🎉  

---

### 🛠️ Manual Setup

If you prefer to do it step-by-step:

1. Click the green **"Use this template"** button.  
2. Clone your newly created repository.  
3. Delete this file (`README.md`) and rename `README.template.md` to `README.md`.  
4. Update the following files with your project details:  
   - `appveyor.yml` → Add secure tokens or configure your preferred CI tool.  
   - `SolutionName.sln` → Replace with your solution name.  
   - Project files (`SolutionName.csproj`, `SolutionName.Tests.csproj`, `SolutionName.IntegrationTests.csproj`).  
     - Update namespaces and project names inside the `Src` and `Tests` directories.  
   - `README.md` → Fix badge paths (`{username}/{repo}`) and add usage instructions.  
   - `_config.yml` → Update with project details for the GitHub Pages documentation site.  

5. ⚙️ Final touches:  
   - Adjust **test project references** in `Tests/SolutionName.Tests.csproj` and `Tests/SolutionName.IntegrationTests.csproj`.  
   - Update the **package name** in your main project file.  

---

## 🏷️ License

📄 This project is licensed under the **MIT License**.  
Feel free to use it as is or replace it with a license that suits your needs.  

🔗 [View LICENSE](https://github.com/guibranco/apiclient-boilerplate-dotnet/blob/main/LICENSE) | [Read More About MIT](http://opensource.org/licenses/MIT)

---

## 🎉 Contribute & Customize  

💬 Questions? Ideas? Open an issue or fork this repository to make it your own!  
Don't forget to ⭐ **star** the project if this template saved you time. 😄  

---
