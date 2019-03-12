#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendar = await graphClient.Me.Calendar.Request().GetAsync();

```