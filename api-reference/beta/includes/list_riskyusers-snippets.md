#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var riskyUsers = await graphClient.RiskyUsers.Request().GetAsync();

```