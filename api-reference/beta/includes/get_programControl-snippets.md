#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var programControls = await graphClient.ProgramControls.Request().GetAsync();

```