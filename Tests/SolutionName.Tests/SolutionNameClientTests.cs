using System.Net.Http;
using FluentAssertions;
using System.Threading;
using System.Threading.Tasks;
using Moq;
using Xunit;
using System.Net;

namespace SolutionName.Tests;

public class SolutionNameClientTests
{
    private readonly Mock<HttpClient> _httpClient = new();

    [Fact]
    public async Task TestGetHelloWorld_ShouldReturnSuccessfully()
    {
        // Arrange
        const string expected = "Hello World!";
        _httpClient
            .Setup(x => x.SendAsync(It.IsAny<HttpRequestMessage>(), It.IsAny<CancellationToken>()))
            .ReturnsAsync(
                new HttpResponseMessage(HttpStatusCode.OK) { Content = new StringContent(expected) }
            );
        var client = new SolutionNameClient(_httpClient.Object);

        // Act
        var result = await client.GetHelloWorldAsync(CancellationToken.None);

        // Assert
        result.Should().Be(expected);
    }
}
