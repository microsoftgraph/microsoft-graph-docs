#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var extensions = await graphClient.Me.Messages.Messages.Extensions.Extensions.Request().GetAsync();
*** 

```