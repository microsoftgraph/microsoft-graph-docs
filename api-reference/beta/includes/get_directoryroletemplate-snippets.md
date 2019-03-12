#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directoryRoleTemplates = await graphClient.DirectoryRoleTemplates.DirectoryRoleTemplates.Request().GetAsync();
*** 

```