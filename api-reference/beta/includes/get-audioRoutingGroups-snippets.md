#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var audioRoutingGroups = await graphClient.App.Calls["{id}"].AudioRoutingGroups.Request().GetAsync();

```