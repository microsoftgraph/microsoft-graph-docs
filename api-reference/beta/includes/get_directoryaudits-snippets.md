#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directoryAudits = await graphClient.AuditLogs.DirectoryAudits.Request().GetAsync();
*** 

```