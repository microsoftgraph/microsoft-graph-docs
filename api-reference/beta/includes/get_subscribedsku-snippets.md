#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var subscribedSkus = await graphClient.SubscribedSkus["{id}"].Request().GetAsync();

```