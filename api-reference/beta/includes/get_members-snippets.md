#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var members = await graphClient.Education.Classes.Classes.Members.Request().GetAsync();
*** 

```