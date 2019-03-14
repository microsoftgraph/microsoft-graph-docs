#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groupSettings = await graphClient.GroupSettings["{id}"].Request().GetAsync();

```