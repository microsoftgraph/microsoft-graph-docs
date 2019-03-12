#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var threads = await graphClient.Groups.Groups.Threads.Request().GetAsync();
*** 

```