#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var programControls = await graphClient.ProgramControls.Request().GetAsync();
*** 

```