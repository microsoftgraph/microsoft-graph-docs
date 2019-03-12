#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var channels = await graphClient.Teams.Teams.Channels.Channels.Request().GetAsync();
*** 

```