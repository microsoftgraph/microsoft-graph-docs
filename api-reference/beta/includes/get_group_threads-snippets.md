#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var threads = await graphClient.Groups["{id}"].Threads.Request().GetAsync();

```