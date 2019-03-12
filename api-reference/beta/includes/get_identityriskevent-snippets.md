#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var riskyUsers = await graphClient.RiskyUsers.Request().GetAsync();
*** 

```