#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var schema = await graphClient.ServicePrincipals.ServicePrincipals.Synchronization.Jobs.Jobs.Schema.Request().GetAsync();
*** 

```