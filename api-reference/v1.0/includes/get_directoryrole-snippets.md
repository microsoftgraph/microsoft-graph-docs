#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directoryRoles = await graphClient.DirectoryRoles["{id}"].Request().GetAsync();

```