using System.IO;
using Microsoft.AspNetCore.Http;
using WireMock.RequestBuilders;
using WireMock.ResponseBuilders;
using WireMock.Server;
using WireMock.Types;

namespace SolutionName.IntegrationTests.Fixtures;

public static class WireMockSetups
{
    public static WireMockServer SetupHelloWorld(this WireMockServer mockApiServer)
    {
        var url = "/hello-world";

        var request = Request.Create().UsingGet().WithPath(url);

        mockApiServer
            .Given(request)
            .RespondWith(
                Response
                    .Create()
                    .WithStatusCode(StatusCodes.Status200OK)
                    .WithHeader("content-type", "text/html")
                    .WithTransformer(TransformerType.Scriban, true)
                    .WithBodyFromFile(Path.Combine("Mocks", "hello-world.txt"))
            );
        return mockApiServer;
    }
}
