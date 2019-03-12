#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var shares = await graphClient.Shares.Shares.Request().GetAsync();
*** 

```