#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var posts = await graphClient.Groups.Groups.Threads.Threads.Posts.Request().GetAsync();
*** 

```