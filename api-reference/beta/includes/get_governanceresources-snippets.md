#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var resources = await graphClient.PrivilegedAccess.PrivilegedAccess.Resources.Request().GetAsync();
*** 

```