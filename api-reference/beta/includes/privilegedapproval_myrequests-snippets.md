#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedApproval = await graphClient.PrivilegedApproval.PrivilegedApproval.Request().GetAsync();
*** 

```