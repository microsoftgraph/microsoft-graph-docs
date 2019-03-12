#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groupSettings = await graphClient.GroupSettings.Request().GetAsync();
*** 

```