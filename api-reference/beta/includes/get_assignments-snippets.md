#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var assignments = await graphClient.PrivilegedRoles.PrivilegedRoles.Assignments.Request().GetAsync();
*** 

```