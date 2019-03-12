#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var transitiveMemberOf = await graphClient.Devices.Devices.TransitiveMemberOf.Request().GetAsync();
*** 

```