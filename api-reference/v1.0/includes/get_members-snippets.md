#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var members = await graphClient.Groups.Groups.Members.Request().GetAsync();
*** 

```