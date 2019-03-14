#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedOperationEvents = await graphClient.PrivilegedOperationEvents.Request()
.Filter("(creationDateTime ge 2017-06-25T07:00:00Z) and (creationDateTime le 2017-07-25T17:30:17Z)")
.OrderBy("creationDateTime desc").GetAsync();

```