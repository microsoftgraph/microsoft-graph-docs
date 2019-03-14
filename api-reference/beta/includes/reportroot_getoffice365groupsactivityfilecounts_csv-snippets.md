#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOffice365GroupsActivityFileCounts = await graphClient.Reports.GetOffice365GroupsActivityFileCounts().Request().GetAsync();

```