using System;
using Microsoft.Extensions.Configuration;
using WireMock.Server;

namespace SolutionName.IntegrationTests.Fixtures;

public sealed class WireMockFixture : IDisposable
{
    public static readonly IConfiguration Configuration = new ConfigurationBuilder()
        .AddJsonFile("appsettings.api_tests.json")
        .Build();

    private static string WireMockServerAddress =>
        // ReSharper disable once SettingNotFoundInConfiguration
        Configuration["WireMock:BaseUrl"]
        ?? throw new ArgumentException("Could not resolve WireMock server address");

    public WireMockFixture() => Server = WireMockServer.Start(WireMockServerAddress);

    void IDisposable.Dispose() => Server.Dispose();

    public WireMockServer Server { get; }
}
