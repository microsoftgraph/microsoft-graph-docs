#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var conversations = await graphClient.Groups.Groups.Conversations.Conversations.Request().GetAsync();
*** 

```