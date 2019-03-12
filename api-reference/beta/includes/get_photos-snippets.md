#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var photos = await graphClient.Groups.Groups.Photos.Request().GetAsync();
*** 

```