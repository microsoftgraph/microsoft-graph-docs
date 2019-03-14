#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directoryObjects = await graphClient.DirectoryObjects["{id}"].Request().GetAsync();

```