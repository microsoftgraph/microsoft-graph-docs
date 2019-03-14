#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSkypeForBusinessPeerToPeerActivityUserCounts = await graphClient.Reports.GetSkypeForBusinessPeerToPeerActivityUserCounts().Request().GetAsync();

```