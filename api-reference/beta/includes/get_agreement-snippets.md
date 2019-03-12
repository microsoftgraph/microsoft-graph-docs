#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var agreements = await graphClient.Agreements.Agreements.Request().GetAsync();

```