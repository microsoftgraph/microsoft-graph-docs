#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var reviewers = await graphClient.AccessReviews.AccessReviews.Reviewers.Request().GetAsync();
*** 

```