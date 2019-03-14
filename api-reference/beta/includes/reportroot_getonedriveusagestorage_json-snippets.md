#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOneDriveUsageStorage = await graphClient.Reports.GetOneDriveUsageStorage().Request().GetAsync();

```