#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var settings = await graphClient.PrivilegedRoles.PrivilegedRoles.Settings.Request().GetAsync();
*** 

```