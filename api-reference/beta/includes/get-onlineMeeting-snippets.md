#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var onlineMeetings = await graphClient.App.OnlineMeetings.OnlineMeetings.Request().GetAsync();
*** 

```