#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var shares = await graphClient.Shares.Shares.Request().GetAsync();
*** 

```