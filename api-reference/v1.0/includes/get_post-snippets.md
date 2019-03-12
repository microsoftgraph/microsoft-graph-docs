#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var posts = await graphClient.Groups.Groups.Threads.Threads.Posts.Posts.Request().GetAsync();

```