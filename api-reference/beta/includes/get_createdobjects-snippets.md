#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var createdObjects = await graphClient.Me.CreatedObjects.Request().GetAsync();

```