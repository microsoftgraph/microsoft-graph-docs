#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var lists = await graphClient.Sites.Sites.Lists.Request().GetAsync();
*** 

```