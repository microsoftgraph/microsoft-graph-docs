#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directoryRoleTemplates = await graphClient.DirectoryRoleTemplates["{id}"].Request().GetAsync();

```