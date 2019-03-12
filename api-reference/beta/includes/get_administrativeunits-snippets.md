#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var administrativeUnits = await graphClient.AdministrativeUnits.Request().GetAsync();
*** 

```