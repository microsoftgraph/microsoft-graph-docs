#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directoryRoles = await graphClient.DirectoryRoles.DirectoryRoles.Request().GetAsync();
*** 

```