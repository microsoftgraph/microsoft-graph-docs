#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessPeerToPeerActivityCounts = await graphClient.Reports.GetSkypeForBusinessPeerToPeerActivityCounts().Request().GetAsync();

```