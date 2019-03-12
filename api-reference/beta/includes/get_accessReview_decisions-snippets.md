#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var myDecisions = await graphClient.AccessReviews.AccessReviews.MyDecisions.Request().GetAsync();

```