using System;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using FluentAssertions;
using SolutionName.IntegrationTests.Fixtures;
using Xunit;

namespace SolutionName.IntegrationTests;

public class SolutionNameClientTests : IClassFixture<WireMockFixture>
{
    public SolutionNameClientTests(WireMockFixture wireMock)
    {
        var wireMockServer = wireMock.Server;
        wireMockServer.SetupHelloWorld();
    }

    [Fact]
    public async Task TestGetHelloWorld_ShouldReturnSuccessfully()
    {
        // Arrange
        var httpClient = new HttpClient
        {
            BaseAddress = new Uri(
                // ReSharper disable once SettingNotFoundInConfiguration
                WireMockFixture.Configuration["WireMock:BaseUrl"]
                    ?? throw new ArgumentException("Could not resolve WireMock server address")
            ),
        };
        var client = new SolutionNameClient(httpClient);

        // Act
        var result = await client.GetHelloWorldAsync(CancellationToken.None);

        // Assert
        result.Should().Be("Hello World!");
    }
}
