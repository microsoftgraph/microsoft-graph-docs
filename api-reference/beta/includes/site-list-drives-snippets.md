#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var drives = await graphClient.Sites.Sites.Drives.Request().GetAsync();
*** 

```