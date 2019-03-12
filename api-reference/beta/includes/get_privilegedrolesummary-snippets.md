#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var summary = await graphClient.PrivilegedRoles.PrivilegedRoles.Summary.Request().GetAsync();
*** 

```