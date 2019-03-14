#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getTeamsDeviceUsageUserCounts = await graphClient.Reports.GetTeamsDeviceUsageUserCounts().Request().GetAsync();

```