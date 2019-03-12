#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedRoles = await graphClient.PrivilegedRoles.Request().GetAsync();
*** 

```