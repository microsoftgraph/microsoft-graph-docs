#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var children = await graphClient.Me.Drive.Root.Children.Request().GetAsync();
*** 

```