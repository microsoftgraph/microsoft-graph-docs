#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var conversations = await graphClient.Groups.Groups.Conversations.Request().GetAsync();
*** 

```