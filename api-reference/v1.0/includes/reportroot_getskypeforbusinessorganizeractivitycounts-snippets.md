#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessOrganizerActivityCounts = await graphClient.Reports.GetSkypeForBusinessOrganizerActivityCounts().Request().GetAsync();

```