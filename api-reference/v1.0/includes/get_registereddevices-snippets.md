#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var registeredDevices = await graphClient.Me.RegisteredDevices.Request().GetAsync();

```