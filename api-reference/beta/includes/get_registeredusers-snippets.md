#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var registeredUsers = await graphClient.Devices.Devices.RegisteredUsers.Request().GetAsync();
*** 

```