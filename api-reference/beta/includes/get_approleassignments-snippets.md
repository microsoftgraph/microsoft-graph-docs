#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var appRoleAssignments = await graphClient.ServicePrincipals["{id}"].AppRoleAssignments.Request().GetAsync();

```