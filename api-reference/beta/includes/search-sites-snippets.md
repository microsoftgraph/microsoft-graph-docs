#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var sites = await graphClient.Sites.Request().GetAsync();
*** 

```