#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var attachments = await graphClient.Me.Events.Events.Attachments.Attachments.Request().GetAsync();
*** 

```