#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var notebooks = await graphClient.Me.Onenote.Notebooks.Request().GetAsync();
*** 

```