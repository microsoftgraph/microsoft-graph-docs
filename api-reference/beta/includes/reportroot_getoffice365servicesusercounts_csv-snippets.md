#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOffice365ServicesUserCounts = await graphClient.Reports.GetOffice365ServicesUserCounts().Request().GetAsync();

```