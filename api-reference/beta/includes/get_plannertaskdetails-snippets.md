#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var details = await graphClient.Planner.Tasks["gcrYAaAkgU2EQUvpkNNXLGQAGTtu"].Details.Request().GetAsync();

```