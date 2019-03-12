#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var myDecisions = await graphClient.AccessReviews.AccessReviews.MyDecisions.Request().GetAsync();
*** 

```