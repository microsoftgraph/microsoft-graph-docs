#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOffice365ActiveUserCounts = await graphClient.Reports.GetOffice365ActiveUserCounts().Request().GetAsync();

```