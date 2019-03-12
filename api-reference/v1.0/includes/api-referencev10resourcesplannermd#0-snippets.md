#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var planner = await graphClient.Planner.Request().GetAsync();

```