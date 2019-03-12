#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var programControlTypes = await graphClient.ProgramControlTypes.Request().GetAsync();

```