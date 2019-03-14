#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessDeviceUsageUserDetail = await graphClient.Reports.GetSkypeForBusinessDeviceUsageUserDetail().Request().GetAsync();

```