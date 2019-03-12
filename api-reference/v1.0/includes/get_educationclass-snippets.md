#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var classes = await graphClient.Education.Classes.Classes.Request().GetAsync();
*** 

```