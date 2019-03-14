#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var posts = await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"].Request().GetAsync();

```