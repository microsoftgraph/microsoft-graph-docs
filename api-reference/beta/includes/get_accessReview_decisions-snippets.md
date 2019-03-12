#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var myDecisions = await graphClient.AccessReviews.AccessReviews.MyDecisions.Request().GetAsync();
*** 

```