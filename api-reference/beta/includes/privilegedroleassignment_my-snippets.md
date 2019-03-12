#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedRoleAssignments = await graphClient.PrivilegedRoleAssignments.PrivilegedRoleAssignments.Request().GetAsync();

```