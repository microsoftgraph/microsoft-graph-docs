#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var settings = await graphClient.Settings.Settings.Request().GetAsync();
*** 

```