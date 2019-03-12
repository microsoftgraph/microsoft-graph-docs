#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var servicePrincipals = await graphClient.ServicePrincipals.Request().GetAsync();

```