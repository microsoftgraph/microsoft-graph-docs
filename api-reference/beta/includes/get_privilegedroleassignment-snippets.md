#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedRoleAssignments = await graphClient.PrivilegedRoleAssignments.PrivilegedRoleAssignments.Request().GetAsync();
*** 

```