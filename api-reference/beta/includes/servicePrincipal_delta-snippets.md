#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var servicePrincipals = await graphClient.ServicePrincipals.ServicePrincipals.Request().GetAsync();
*** 

```