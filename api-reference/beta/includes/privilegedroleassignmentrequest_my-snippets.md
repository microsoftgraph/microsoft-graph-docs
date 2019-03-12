#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedRoleAssignmentRequests = await graphClient.PrivilegedRoleAssignmentRequests.PrivilegedRoleAssignmentRequests.Request().GetAsync();
*** 

```