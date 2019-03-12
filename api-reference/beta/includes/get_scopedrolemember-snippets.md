#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var scopedRoleMembers = await graphClient.AdministrativeUnits.AdministrativeUnits.ScopedRoleMembers.Request().GetAsync();
*** 

```