#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var registeredUsers = await graphClient.Devices["{id}"].RegisteredUsers.Request().GetAsync();

```