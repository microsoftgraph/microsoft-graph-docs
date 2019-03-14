#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOffice365ActiveUserDetail = await graphClient.Reports.GetOffice365ActiveUserDetail().Request().GetAsync();

```