#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var audioRoutingGroups = await graphClient.App.Calls.Calls.AudioRoutingGroups.Request().GetAsync();
*** 

```