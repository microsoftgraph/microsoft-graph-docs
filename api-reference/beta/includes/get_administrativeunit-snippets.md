#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var administrativeUnit = await graphClient.Education.Schools.Schools.AdministrativeUnit.Request().GetAsync();
*** 

```