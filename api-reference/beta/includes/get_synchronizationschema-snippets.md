#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var schema = await graphClient.ServicePrincipals["{servicePrincipalId}"].Synchronization.Jobs["{jobId}"].Schema.Request().GetAsync();

```