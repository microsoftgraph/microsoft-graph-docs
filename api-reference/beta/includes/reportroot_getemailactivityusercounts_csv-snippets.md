#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getEmailActivityUserCounts = await graphClient.Reports.GetEmailActivityUserCounts().Request().GetAsync();

```