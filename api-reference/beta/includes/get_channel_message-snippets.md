#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messages = await graphClient.Teams.Teams.Channels.Channels.Messages.Messages.Request().GetAsync();
*** 

```