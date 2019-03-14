#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var my = await graphClient.PrivilegedRoleAssignments.My().Request().GetAsync();

```