#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var organization = await graphClient.Organization.Request().GetAsync();
*** 

```