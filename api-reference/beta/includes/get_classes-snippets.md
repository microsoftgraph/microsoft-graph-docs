#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var classes = await graphClient.Education.Me.Classes.Request().GetAsync();
*** 

```