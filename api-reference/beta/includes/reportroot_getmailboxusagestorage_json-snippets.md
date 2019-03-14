#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getMailboxUsageStorage = await graphClient.Reports.GetMailboxUsageStorage().Request().GetAsync();

```