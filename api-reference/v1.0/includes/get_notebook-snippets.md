#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var notebooks = await graphClient.Me.Onenote.Notebooks.Notebooks.Request().GetAsync();
*** 

```