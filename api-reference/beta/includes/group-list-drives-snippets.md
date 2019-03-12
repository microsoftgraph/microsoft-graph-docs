#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var drives = await graphClient.Groups.Groups.Drives.Request().GetAsync();
*** 

```