#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var drive = await graphClient.Users["{idOrUserPrincipalName}"].Drive.Request().GetAsync();

```