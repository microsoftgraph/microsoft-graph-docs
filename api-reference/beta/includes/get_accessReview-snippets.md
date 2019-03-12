#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var accessReviews = await graphClient.AccessReviews.AccessReviews.Request().GetAsync();
*** 

```