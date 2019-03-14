#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessOrganizerActivityUserCounts = await graphClient.Reports.GetSkypeForBusinessOrganizerActivityUserCounts().Request().GetAsync();

```