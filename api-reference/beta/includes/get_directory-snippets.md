#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var deletedItems = await graphClient.Directory.DeletedItems["46cc6179-19d0-473e-97ad-6ff84347bbbb"].Request().GetAsync();

```