#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var transitiveMemberOf = await graphClient.Devices.Devices.TransitiveMemberOf.Request().GetAsync();
*** 

```