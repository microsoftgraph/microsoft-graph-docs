#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getMailboxUsageDetail = await graphClient.Reports.GetMailboxUsageDetail().Request().GetAsync();

```