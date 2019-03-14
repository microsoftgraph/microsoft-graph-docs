#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var channels = await graphClient.Teams["{id}"].Channels["{id}"].Request().GetAsync();

```