#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var reviewers = await graphClient.AccessReviews.AccessReviews.Reviewers.Request().GetAsync();
*** 

```