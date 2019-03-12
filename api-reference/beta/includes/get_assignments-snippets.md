#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var assignments = await graphClient.PrivilegedRoles.PrivilegedRoles.Assignments.Request().GetAsync();
*** 

```