#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOffice365GroupsActivityGroupCounts = await graphClient.Reports.GetOffice365GroupsActivityGroupCounts().Request().GetAsync();

```