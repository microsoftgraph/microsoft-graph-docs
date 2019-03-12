#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var education = await graphClient.Education.Request().GetAsync();
*** 

```