#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var subscriptions = await graphClient.Subscriptions.Subscriptions.Request().GetAsync();
*** 

```