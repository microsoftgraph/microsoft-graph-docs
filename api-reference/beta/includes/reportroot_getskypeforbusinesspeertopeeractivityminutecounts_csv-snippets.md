#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessPeerToPeerActivityMinuteCounts = await graphClient.Reports.GetSkypeForBusinessPeerToPeerActivityMinuteCounts().Request().GetAsync();

```