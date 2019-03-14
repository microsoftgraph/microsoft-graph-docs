#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var summary = await graphClient.PrivilegedRoles["{id}"].Summary.Request().GetAsync();

```