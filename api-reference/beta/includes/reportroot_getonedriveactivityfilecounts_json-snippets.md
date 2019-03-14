#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOneDriveActivityFileCounts = await graphClient.Reports.GetOneDriveActivityFileCounts().Request().GetAsync();

```