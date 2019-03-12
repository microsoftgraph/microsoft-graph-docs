#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var signIns = await graphClient.AuditLogs.SignIns.Request().GetAsync();
*** 

```