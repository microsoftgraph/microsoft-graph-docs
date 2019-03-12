#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var subscriptions = await graphClient.Me.Drive.Root.Subscriptions.Subscriptions.Request().GetAsync();

```