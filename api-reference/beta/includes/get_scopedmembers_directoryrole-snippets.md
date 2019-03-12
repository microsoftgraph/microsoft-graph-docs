#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var scopedMembers = await graphClient.DirectoryRoles.DirectoryRoles.ScopedMembers.Request().GetAsync();

```