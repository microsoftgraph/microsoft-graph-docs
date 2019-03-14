#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOneDriveUsageAccountDetail = await graphClient.Reports.GetOneDriveUsageAccountDetail().Request().GetAsync();

```