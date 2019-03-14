#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var installedApps = await graphClient.Teams["{id}"].InstalledApps.Request().GetAsync();

```