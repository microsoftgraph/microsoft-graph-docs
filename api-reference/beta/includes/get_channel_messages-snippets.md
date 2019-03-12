#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messages = await graphClient.Teams.Teams.Channels.Channels.Messages.Request().GetAsync();
*** 

```