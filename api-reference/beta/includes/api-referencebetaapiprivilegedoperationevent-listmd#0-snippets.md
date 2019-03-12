#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedOperationEvents = await graphClient.PrivilegedOperationEvents.Request().GetAsync();

```