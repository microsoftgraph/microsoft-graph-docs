#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var functions = await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"].Schema.Functions().Request().GetAsync();

```