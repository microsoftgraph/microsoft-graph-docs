#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedRoleAssignmentRequests = await graphClient.PrivilegedRoleAssignmentRequests.Request().GetAsync();
*** 

```