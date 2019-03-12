#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var subscribedSkus = await graphClient.SubscribedSkus.SubscribedSkus.Request().GetAsync();
*** 

```