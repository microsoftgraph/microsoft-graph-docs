#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getTeamsDeviceUsageUserDetail = await graphClient.Reports.GetTeamsDeviceUsageUserDetail().Request().GetAsync();

```