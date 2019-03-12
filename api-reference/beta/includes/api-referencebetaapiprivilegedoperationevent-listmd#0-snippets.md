#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var privilegedOperationEvents = await graphClient.PrivilegedOperationEvents.Request().GetAsync();
*** 

```