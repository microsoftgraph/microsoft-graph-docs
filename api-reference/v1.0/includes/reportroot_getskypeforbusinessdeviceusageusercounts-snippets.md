#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessDeviceUsageUserCounts = await graphClient.Reports.GetSkypeForBusinessDeviceUsageUserCounts().Request().GetAsync();

```