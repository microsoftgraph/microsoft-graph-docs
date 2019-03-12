#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var organization = await graphClient.Organization.Request().GetAsync();

```