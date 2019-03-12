#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var buckets = await graphClient.Planner.Buckets.Buckets.Request().GetAsync();
*** 

```