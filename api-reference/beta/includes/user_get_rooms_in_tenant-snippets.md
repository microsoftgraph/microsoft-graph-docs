#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var findRooms = await graphClient.Me.FindRooms.Request().GetAsync();
*** 

```