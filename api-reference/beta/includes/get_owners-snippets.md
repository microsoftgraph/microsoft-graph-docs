#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var installedApps = await graphClient.Teams.Teams.InstalledApps.Request().GetAsync();
*** 

```