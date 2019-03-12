#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var following = await graphClient.Me.Drive.Following.Request().GetAsync();
*** 

```