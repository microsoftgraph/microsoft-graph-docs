#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var summary = await graphClient.PrivilegedRoles.PrivilegedRoles.Summary.Request().GetAsync();

```