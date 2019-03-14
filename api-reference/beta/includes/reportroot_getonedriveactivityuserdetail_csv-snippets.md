#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOneDriveActivityUserDetail = await graphClient.Reports.GetOneDriveActivityUserDetail().Request().GetAsync();

```