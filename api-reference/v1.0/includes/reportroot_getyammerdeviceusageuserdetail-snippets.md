#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getYammerDeviceUsageUserDetail = await graphClient.Reports.GetYammerDeviceUsageUserDetail().Request().GetAsync();

```