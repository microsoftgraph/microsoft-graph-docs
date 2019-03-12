#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var contracts = await graphClient.Contracts.Request().GetAsync();
*** 

```