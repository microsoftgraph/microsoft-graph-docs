#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var ownedDevices = await graphClient.Me.OwnedDevices.Request().GetAsync();

```