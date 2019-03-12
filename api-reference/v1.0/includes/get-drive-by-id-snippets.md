#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var drives = await graphClient.Drives.Drives.Request().GetAsync();
*** 

```