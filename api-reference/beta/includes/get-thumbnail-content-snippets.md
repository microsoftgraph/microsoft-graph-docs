#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var content = await graphClient.Me.Drive.Items.Items.Thumbnails.Thumbnails.{size}.Content.Request().GetAsync();
*** 

```