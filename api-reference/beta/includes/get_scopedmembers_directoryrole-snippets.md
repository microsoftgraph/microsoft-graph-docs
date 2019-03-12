#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var scopedMembers = await graphClient.DirectoryRoles.DirectoryRoles.ScopedMembers.Request().GetAsync();
*** 

```