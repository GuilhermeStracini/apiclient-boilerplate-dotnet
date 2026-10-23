.NET API Client Boilerplate

Um template reutilizável para criar bibliotecas clientes e SDKs de APIs em C#/.NET.

O projeto oferece uma estrutura inicial organizada, scripts para configuração automatizada, projetos de teste e um exemplo de pipeline de integração contínua (CI/CD). Assim, você pode concentrar seus esforços na implementação do cliente da API, em vez de configurar tudo do zero.

✨ Funcionalidades
Estrutura organizada: projetos separados para a biblioteca principal, testes unitários e testes de integração.
Configuração automatizada: scripts para personalizar nomes e configurações do projeto.
Testes desde o início: estrutura preparada para testes unitários e de integração.
CI/CD: configuração de exemplo para o AppVeyor.
Publicação no NuGet: estrutura preparada para empacotar e distribuir a biblioteca.
Documentação: configuração inicial para publicação de documentação no GitHub Pages.
Personalização: adapte os nomes, namespaces e configurações às necessidades da sua API.
Importante: este repositório é um template inicial. Recursos como autenticação, chamadas HTTP e tratamento de erros devem ser implementados ou ajustados conforme a API que você deseja consumir.
🚀 Pré-requisitos

Antes de começar, instale:

.NET SDK compatível com os projetos da solução.
Git.
Um editor de código, como Visual Studio ou Visual Studio Code.
Uma conta no GitHub para criar seu próprio repositório a partir deste template.
⚡ Como começar
1. Crie seu repositório

No GitHub:

Abra a página deste repositório.
Clique em Use this template.
Crie um novo repositório com o nome desejado.
2. Clone o repositório

Substitua <username> pelo seu usuário do GitHub e <repository> pelo nome do repositório criado.

git clone https://github.com/<username>/<repository>.git
cd <repository>

3. Execute o script de configuração

Na raiz do repositório, execute apenas o script correspondente ao seu sistema operacional.

Windows — Prompt de Comando (CMD)

initial-setup.bat


Windows — PowerShell

.\initial-setup.ps1


Linux ou macOS

chmod +x initial-setup.sh
./initial-setup.sh


Siga as instruções exibidas pelo script para personalizar os nomes e as configurações da solução.

Antes de executar qualquer script, revise seu conteúdo para entender quais alterações serão realizadas.

4. Confira as alterações

Após a execução, verifique se:

Os nomes da solução e dos projetos estão corretos.
Os namespaces correspondem aos nomes escolhidos.
As referências entre projetos apontam para os arquivos corretos.
Os arquivos de configuração e a documentação foram atualizados.

Se preferir, você pode realizar essas alterações manualmente, conforme as instruções da próxima seção.

🛠️ Configuração manual

Se você não quiser utilizar os scripts de configuração, siga as etapas abaixo.

1. Atualize a documentação

O repositório inclui o arquivo README.template.md, que pode servir como base para o seu README.

Atualize as seguintes informações:

Descrição e finalidade da biblioteca.
Instruções de instalação e utilização.
Exemplos de código.
Links para o repositório e para a documentação.
Badges de status do build e dos testes.

Substitua os valores de exemplo, como <username> e <repository>, pelos dados do seu projeto.

2. Renomeie a solução e os projetos

Substitua o nome SolutionName pelo nome escolhido para sua solução.

Revise os seguintes arquivos e diretórios:

SolutionName.sln: arquivo da solução.
SolutionName.csproj: projeto principal da biblioteca.
SolutionName.Tests.csproj: projeto de testes unitários.
SolutionName.IntegrationTests.csproj: projeto de testes de integração.
Src/: código-fonte da biblioteca.
Tests/: código dos testes.

Atualize também os namespaces, as referências entre projetos e os caminhos dos arquivos nos quais os nomes antigos aparecem.

Atenção: renomear apenas os arquivos não é suficiente. A solução e os projetos precisam continuar apontando para os caminhos corretos.

3. Atualize as configurações

Revise os arquivos abaixo conforme as necessidades do seu projeto.

Arquivo ou diretório	O que configurar
appveyor.yml	Build, testes e etapas de publicação
SolutionName.sln	Nome da solução e caminhos dos projetos
Projeto principal .csproj	Nome do assembly, pacote NuGet, versão, metadados e framework
Projetos de teste .csproj	Dependências e referências aos projetos testados
Src/	Implementação do cliente e namespaces
Tests/	Testes unitários e de integração
README.md	Documentação, instalação e exemplos
_config.yml	Título, descrição e configurações do GitHub Pages
4. Configure o CI/CD

O arquivo appveyor.yml contém uma configuração de exemplo para o AppVeyor.

Adapte-a ao seu projeto, verificando:

Versão do .NET SDK.
Configurações de restauração e compilação.
Execução e publicação dos resultados dos testes.
Criação e publicação do pacote NuGet, caso necessário.

Você também pode utilizar GitHub Actions, Azure DevOps ou CircleCI.

Segurança: armazene chaves de API, tokens e credenciais de publicação nos mecanismos seguros de armazenamento de segredos do seu provedor de CI/CD. Nunca inclua essas informações diretamente no código-fonte.

🔍 Validação da solução

Depois de concluir a configuração, valide se a solução restaura as dependências, compila e executa os testes corretamente.

Execute os comandos abaixo na raiz do repositório:

1. Restaurar as dependências

dotnet restore


2. Compilar a solução

dotnet build --no-restore


3. Executar os testes

dotnet test


Se houver várias soluções no repositório, informe explicitamente o arquivo .sln correspondente.

Os testes de integração podem exigir uma API disponível, um ambiente de testes ou credenciais configuradas em variáveis de ambiente.

🧩 Boas práticas para clientes de API

Ao implementar seu cliente, considere as seguintes recomendações:

Requisições HTTP: utilize IHttpClientFactory e injeção de dependência quando apropriado à arquitetura da aplicação.
Operações assíncronas: utilize async e await e disponibilize parâmetros CancellationToken nas operações assíncronas que possam ser canceladas.
Tratamento de erros: defina uma estratégia consistente para respostas HTTP malsucedidas e erros de comunicação.
Modelos de dados: organize os DTOs de requisição e resposta de forma clara.
Configuração: facilite a definição da URL base, autenticação e demais opções necessárias.
Testabilidade: utilize handlers HTTP simulados nos testes unitários para
