#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessParticipantActivityMinuteCounts = await graphClient.Reports.GetSkypeForBusinessParticipantActivityMinuteCounts().Request().GetAsync();

```