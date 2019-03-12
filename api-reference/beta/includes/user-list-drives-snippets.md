#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var drives = await graphClient.Users.Users.Drives.Request().GetAsync();
*** 

```