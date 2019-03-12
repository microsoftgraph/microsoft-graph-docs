#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var thumbnails = await graphClient.Me.Drive.Items.Items.Thumbnails.Request().GetAsync();
*** 

```