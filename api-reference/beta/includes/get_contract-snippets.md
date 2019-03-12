#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var contracts = await graphClient.Contracts.Request().GetAsync();

```