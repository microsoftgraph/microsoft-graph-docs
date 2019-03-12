#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var versions = await graphClient.Sites.Sites.Lists.Lists.Items.Items.Versions.Versions.Request().GetAsync();

```