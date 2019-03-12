#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var shares = await graphClient.Shares.Shares.Request().GetAsync();

```