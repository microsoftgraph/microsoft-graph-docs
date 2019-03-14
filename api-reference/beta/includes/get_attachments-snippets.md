#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var attachments = await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"].Attachments.Request().GetAsync();

```