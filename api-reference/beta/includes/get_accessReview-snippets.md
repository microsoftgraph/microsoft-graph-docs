#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var accessReviews = await graphClient.AccessReviews.AccessReviews.Request().GetAsync();

```