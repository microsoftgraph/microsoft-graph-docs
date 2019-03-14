#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getEmailActivityCounts = await graphClient.Reports.GetEmailActivityCounts().Request().GetAsync();

```