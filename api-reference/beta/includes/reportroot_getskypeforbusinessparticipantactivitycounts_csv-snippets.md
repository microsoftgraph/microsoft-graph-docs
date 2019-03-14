#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessParticipantActivityCounts = await graphClient.Reports.GetSkypeForBusinessParticipantActivityCounts().Request().GetAsync();

```