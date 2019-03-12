#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var planner = await graphClient.Planner.Request().GetAsync();
*** 

```