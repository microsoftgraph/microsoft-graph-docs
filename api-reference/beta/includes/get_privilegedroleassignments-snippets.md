#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedRoleAssignments = await graphClient.PrivilegedRoleAssignments.Request()
.Filter("isElevated eq true and expirationDateTime ne null or isElevated eq false").GetAsync();

```