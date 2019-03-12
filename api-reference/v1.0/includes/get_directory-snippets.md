#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var deletedItems = await graphClient.Directory.DeletedItems.DeletedItems.Request().GetAsync();
*** 

```