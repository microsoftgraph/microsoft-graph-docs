#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var drives = await graphClient.Groups.Groups.Drives.Request().GetAsync();
*** 

```