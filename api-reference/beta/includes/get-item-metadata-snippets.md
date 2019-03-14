#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var root = await graphClient.Me.Drive.Root.Request().GetAsync();

```