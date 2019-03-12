#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var replies = await graphClient.Teams.Teams.Channels.Channels.Messages.Messages.Replies.Request().GetAsync();
*** 

```