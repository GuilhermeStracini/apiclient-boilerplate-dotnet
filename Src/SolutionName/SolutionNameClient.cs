using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;

namespace SolutionName;

public class SolutionNameClient : ISolutionNameClient
{
    private readonly HttpClient _httpClient;

    public SolutionNameClient(HttpClient httpClient) => _httpClient = httpClient;

    public async Task<string> GetHelloWorldAsync(CancellationToken cancellationToken)
    {
        var response = await _httpClient.SendAsync(
            new HttpRequestMessage(HttpMethod.Get, "hello-world"),
            cancellationToken
        );

        response.EnsureSuccessStatusCode();

        return await response.Content.ReadAsStringAsync();
    }
}
