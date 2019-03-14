#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getMailboxUsageQuotaStatusMailboxCounts = await graphClient.Reports.GetMailboxUsageQuotaStatusMailboxCounts().Request().GetAsync();

```