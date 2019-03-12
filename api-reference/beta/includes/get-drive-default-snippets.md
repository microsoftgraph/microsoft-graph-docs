#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var drive = await graphClient.Me.Drive.Request().GetAsync();
*** 

```