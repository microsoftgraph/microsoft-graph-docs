#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOffice365GroupsActivityCounts = await graphClient.Reports.GetOffice365GroupsActivityCounts().Request().GetAsync();

```