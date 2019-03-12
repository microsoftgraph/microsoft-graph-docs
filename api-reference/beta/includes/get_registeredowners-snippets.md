#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var registeredOwners = await graphClient.Devices.Devices.RegisteredOwners.Request().GetAsync();

```