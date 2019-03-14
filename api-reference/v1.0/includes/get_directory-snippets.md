#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var deletedItems = await graphClient.Directory.DeletedItems["{object-id}"].Request().GetAsync();

```