#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessDeviceUsageDistributionUserCounts = await graphClient.Reports.GetSkypeForBusinessDeviceUsageDistributionUserCounts().Request().GetAsync();

```