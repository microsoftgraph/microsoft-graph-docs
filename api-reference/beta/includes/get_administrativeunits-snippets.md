#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var administrativeUnits = await graphClient.AdministrativeUnits.Request().GetAsync();
*** 

```