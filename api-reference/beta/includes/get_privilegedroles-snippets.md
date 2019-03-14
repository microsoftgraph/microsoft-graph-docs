#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedRoles = await graphClient.PrivilegedRoles.Request().GetAsync();

```