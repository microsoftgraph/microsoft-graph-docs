#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var oAuth2Permissiongrants = await graphClient.OAuth2Permissiongrants["{id}"].Request().GetAsync();

```