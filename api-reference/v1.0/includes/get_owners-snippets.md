#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var installedApps = await graphClient.Teams.Teams.InstalledApps.Request().GetAsync();

```