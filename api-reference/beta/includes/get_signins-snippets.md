#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var signIns = await graphClient.AuditLogs.SignIns.Request().GetAsync();
*** 

```