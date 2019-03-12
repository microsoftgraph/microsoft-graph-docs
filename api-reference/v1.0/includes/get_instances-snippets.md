#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var instances = await graphClient.Me.Events.Events.Instances.Request().GetAsync();

```