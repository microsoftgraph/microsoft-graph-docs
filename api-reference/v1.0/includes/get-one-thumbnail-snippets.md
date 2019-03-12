#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var {size} = await graphClient.Me.Drive.Items.Items.Thumbnails.Thumbnails.{size}.Request().GetAsync();
*** 

```