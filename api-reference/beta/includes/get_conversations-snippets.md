#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var conversations = await graphClient.Groups["{id}"].Conversations.Request().GetAsync();

```