#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var classes = await graphClient.Education.Me.Classes.Request().GetAsync();

```