#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getYammerDeviceUsageDistributionUserCounts = await graphClient.Reports.GetYammerDeviceUsageDistributionUserCounts().Request().GetAsync();

```