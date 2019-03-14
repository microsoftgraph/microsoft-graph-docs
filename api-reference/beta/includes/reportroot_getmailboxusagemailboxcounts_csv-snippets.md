#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getMailboxUsageMailboxCounts = await graphClient.Reports.GetMailboxUsageMailboxCounts().Request().GetAsync();

```