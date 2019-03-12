#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messages = await graphClient.Teams.Teams.Channels.Channels.Messages.Request().GetAsync();

```