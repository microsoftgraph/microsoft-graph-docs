#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessParticipantActivityUserCounts = await graphClient.Reports.GetSkypeForBusinessParticipantActivityUserCounts().Request().GetAsync();

```