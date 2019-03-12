#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var operations = await graphClient.Me.Onenote.Operations.Operations.Request().GetAsync();

```