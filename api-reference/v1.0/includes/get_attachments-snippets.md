#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var attachments = await graphClient.Groups.Groups.Threads.Threads.Posts.Posts.Attachments.Request().GetAsync();
*** 

```