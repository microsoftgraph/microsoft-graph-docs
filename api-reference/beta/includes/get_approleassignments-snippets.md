#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var appRoleAssignments = await graphClient.ServicePrincipals.ServicePrincipals.AppRoleAssignments.Request().GetAsync();
*** 

```