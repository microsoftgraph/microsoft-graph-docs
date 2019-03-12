#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groups = await graphClient.Groups.Request().GetAsync();
*** 

```