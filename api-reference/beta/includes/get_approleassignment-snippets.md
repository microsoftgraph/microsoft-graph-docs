#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var appRoleAssignments = await graphClient.AppRoleAssignments.AppRoleAssignments.Request().GetAsync();
*** 

```