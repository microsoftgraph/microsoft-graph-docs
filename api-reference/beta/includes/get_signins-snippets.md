#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var signIns = await graphClient.AuditLogs.SignIns.Request().GetAsync();

```