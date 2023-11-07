using System.Threading;
using System.Threading.Tasks;

namespace SolutionName;

public interface ISolutionNameClient
{
    Task<string> GetHelloWorldAsync(CancellationToken cancellationToken);
}
