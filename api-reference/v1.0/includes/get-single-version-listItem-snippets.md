#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var versions = await graphClient.Sites.Sites.Lists.Lists.Items.Items.Versions.Versions.Request().GetAsync();
*** 

```