#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var domains = await graphClient.Domains.Request().GetAsync();
*** 

```