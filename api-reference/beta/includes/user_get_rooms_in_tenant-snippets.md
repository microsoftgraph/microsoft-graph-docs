#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var findRooms = await graphClient.Me.FindRooms.Request().GetAsync();

```