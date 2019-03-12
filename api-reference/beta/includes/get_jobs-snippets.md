#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var jobs = await graphClient.ServicePrincipals.ServicePrincipals.Synchronization.Jobs.Request().GetAsync();
*** 

```