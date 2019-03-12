#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var roleSettings = await graphClient.PrivilegedAccess.PrivilegedAccess.RoleSettings.RoleSettings.Request().GetAsync();
*** 

```