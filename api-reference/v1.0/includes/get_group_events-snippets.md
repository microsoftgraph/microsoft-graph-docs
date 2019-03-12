#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var events = await graphClient.Groups.Groups.Events.Request().GetAsync();
*** 

```