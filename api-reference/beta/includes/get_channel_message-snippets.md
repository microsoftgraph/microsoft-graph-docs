#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messages = await graphClient.Teams["{id}"].Channels["{id}"].Messages["{id}"].Request().GetAsync();

```