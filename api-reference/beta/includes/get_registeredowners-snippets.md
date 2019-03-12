#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var registeredOwners = await graphClient.Devices.Devices.RegisteredOwners.Request().GetAsync();
*** 

```