#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var instances = await graphClient.Me.Events["{id}"].Instances.Request().GetAsync();

```