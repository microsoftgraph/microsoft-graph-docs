#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var scopedRoleMembers = await graphClient.AdministrativeUnits.AdministrativeUnits.ScopedRoleMembers.Request().GetAsync();
*** 

```