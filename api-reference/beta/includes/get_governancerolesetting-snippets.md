#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var roleSettings = await graphClient.PrivilegedAccess.PrivilegedAccess.RoleSettings.RoleSettings.Request().GetAsync();

```