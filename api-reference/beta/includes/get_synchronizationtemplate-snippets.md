#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var templates = await graphClient.ServicePrincipals["{id}"].Synchronization.Templates.Request().GetAsync();

```