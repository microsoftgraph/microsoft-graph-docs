#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var permissions = await graphClient.Me.Drive.Items.Items.Permissions.Request().GetAsync();
*** 

```