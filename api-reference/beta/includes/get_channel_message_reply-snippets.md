#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var replies = await graphClient.Teams.Teams.Channels.Channels.Messages.Messages.Replies.Replies.Request().GetAsync();
*** 

```