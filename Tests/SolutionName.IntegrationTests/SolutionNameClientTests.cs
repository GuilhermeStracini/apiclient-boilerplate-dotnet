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

    /// <summary>
    /// Tests the GetHelloWorldAsync method to ensure it returns the expected result.
    /// </summary>
    /// <remarks>
    /// This unit test is designed to verify that the GetHelloWorldAsync method of the
    /// SolutionNameClient class successfully retrieves a "Hello World!" message from
    /// the configured WireMock server. The test first sets up an HttpClient with a
    /// base address obtained from the configuration. It then calls the
    /// GetHelloWorldAsync method and asserts that the result matches the expected
    /// output. This test is asynchronous and utilizes FluentAssertions for the assertion.
    /// </remarks>
    /// <exception cref="ArgumentException">
    /// Thrown when the WireMock server address cannot be resolved from the configuration.
    /// </exception>
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
