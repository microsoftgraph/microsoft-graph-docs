#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var onlineMeetings = await graphClient.App.OnlineMeetings["{id}"].Request().GetAsync();

```