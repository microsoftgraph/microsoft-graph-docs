#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var versions = await graphClient.Me.Drive.Items.Items.Versions.Request().GetAsync();
*** 

```