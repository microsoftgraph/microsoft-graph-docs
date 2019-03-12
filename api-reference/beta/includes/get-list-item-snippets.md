#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var items = await graphClient.Sites.Sites.Lists.Lists.Items.Items.Request().GetAsync();

```