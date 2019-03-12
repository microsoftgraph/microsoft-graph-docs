#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directoryRoles = await graphClient.DirectoryRoles.Request().GetAsync();
*** 

```