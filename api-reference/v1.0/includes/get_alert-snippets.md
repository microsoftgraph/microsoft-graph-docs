#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var alerts = await graphClient.Security.Alerts["{alert_id}"].Request().GetAsync();

```