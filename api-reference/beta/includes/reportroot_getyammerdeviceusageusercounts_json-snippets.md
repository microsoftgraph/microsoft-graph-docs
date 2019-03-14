#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getYammerDeviceUsageUserCounts = await graphClient.Reports.GetYammerDeviceUsageUserCounts().Request().GetAsync();

```