#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var subscriptions = await graphClient.Me.Drive.Root.Subscriptions["socketIo"].Request().GetAsync();

```