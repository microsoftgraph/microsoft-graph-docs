#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var scopedMembers = await graphClient.DirectoryRoles.DirectoryRoles.ScopedMembers.Request().GetAsync();
*** 

```