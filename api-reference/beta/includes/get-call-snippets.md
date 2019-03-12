#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calls = await graphClient.App.Calls.Calls.Request().GetAsync();
*** 

```