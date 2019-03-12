#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var onlineMeetings = await graphClient.App.OnlineMeetings.OnlineMeetings.Request().GetAsync();
*** 

```