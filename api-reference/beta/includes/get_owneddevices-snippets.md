#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var ownedDevices = await graphClient.Me.OwnedDevices.Request().GetAsync();
*** 

```