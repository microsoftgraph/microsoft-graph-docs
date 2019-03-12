#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groupSettings = await graphClient.GroupSettings.GroupSettings.Request().GetAsync();

```