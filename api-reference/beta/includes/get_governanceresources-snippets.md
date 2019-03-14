#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var resources = await graphClient.PrivilegedAccess["azureResources"].Resources.Request().GetAsync();

```