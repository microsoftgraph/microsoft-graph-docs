#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var me = await graphClient.Me.Request().GetAsync();
*** 

```