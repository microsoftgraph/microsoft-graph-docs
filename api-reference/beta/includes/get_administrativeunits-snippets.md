#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var administrativeUnits = await graphClient.AdministrativeUnits.Request().GetAsync();

```