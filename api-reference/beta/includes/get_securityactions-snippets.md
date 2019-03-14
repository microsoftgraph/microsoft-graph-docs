#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var securityActions = await graphClient.Security.SecurityActions.Request().GetAsync();

```