#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getTeamsDeviceUsageDistributionUserCounts = await graphClient.Reports.GetTeamsDeviceUsageDistributionUserCounts().Request().GetAsync();

```