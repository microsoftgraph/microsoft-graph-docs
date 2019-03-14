#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOneDriveUsageFileCounts = await graphClient.Reports.GetOneDriveUsageFileCounts().Request().GetAsync();

```