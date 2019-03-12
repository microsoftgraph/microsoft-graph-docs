#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var extensions = await graphClient.Me.Messages.Messages.Extensions.Extensions.Request().GetAsync();

```