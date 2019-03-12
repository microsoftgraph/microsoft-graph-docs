#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var jobs = await graphClient.ServicePrincipals.ServicePrincipals.Synchronization.Jobs.Jobs.Request().GetAsync();

```