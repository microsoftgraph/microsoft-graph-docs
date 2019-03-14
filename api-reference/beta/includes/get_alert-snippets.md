#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var alerts = await graphClient.Security.Alerts["{id}"].Request().GetAsync();

```