#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var conversations = await graphClient.Groups.Groups.Conversations.Conversations.Request().GetAsync();

```