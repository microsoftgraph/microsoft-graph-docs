#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var findRoomLists = await graphClient.Me.FindRoomLists.Request().GetAsync();

```