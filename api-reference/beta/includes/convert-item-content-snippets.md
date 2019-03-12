#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var content = await graphClient.Drive.Items.Items.Content.Request().GetAsync();
*** 

```