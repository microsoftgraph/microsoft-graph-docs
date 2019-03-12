#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var channels = await graphClient.Teams.Teams.Channels.Request().GetAsync();
*** 

```