#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedRoles = await graphClient.PrivilegedRoles.Request().GetAsync();
*** 

```