#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessOrganizerActivityMinuteCounts = await graphClient.Reports.GetSkypeForBusinessOrganizerActivityMinuteCounts().Request().GetAsync();

```