#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOneDriveUsageAccountCounts = await graphClient.Reports.GetOneDriveUsageAccountCounts().Request().GetAsync();

```