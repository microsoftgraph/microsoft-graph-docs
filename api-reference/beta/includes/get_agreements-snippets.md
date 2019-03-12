#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var agreements = await graphClient.Agreements.Request().GetAsync();
*** 

```