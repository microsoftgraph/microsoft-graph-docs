#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var scopedRoleMembers = await graphClient.AdministrativeUnits["{id}"].ScopedRoleMembers.Request().GetAsync();

```