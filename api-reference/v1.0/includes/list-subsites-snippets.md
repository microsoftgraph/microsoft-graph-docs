#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sites = await graphClient.Sites.Sites.Sites.Request().GetAsync();

```