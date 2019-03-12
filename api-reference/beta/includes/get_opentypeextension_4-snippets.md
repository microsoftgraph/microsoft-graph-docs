#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var extensions = await graphClient.Groups.Groups.Threads.Threads.Posts.Posts.Extensions.Extensions.Request().GetAsync();
*** 

```