#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var root = await graphClient.Me.Drive.Root.Request().GetAsync();
*** 

```