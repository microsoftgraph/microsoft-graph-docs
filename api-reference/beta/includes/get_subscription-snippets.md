#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var subscriptions = await graphClient.Subscriptions.Subscriptions.Request().GetAsync();
*** 

```