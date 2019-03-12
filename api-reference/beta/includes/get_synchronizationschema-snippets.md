#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var schema = await graphClient.ServicePrincipals.ServicePrincipals.Synchronization.Jobs.Jobs.Schema.Request().GetAsync();

```