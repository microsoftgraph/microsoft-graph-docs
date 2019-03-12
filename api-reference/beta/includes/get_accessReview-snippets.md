#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var accessReviews = await graphClient.AccessReviews.AccessReviews.Request().GetAsync();
*** 

```