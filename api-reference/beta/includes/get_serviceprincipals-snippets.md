#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var servicePrincipals = await graphClient.ServicePrincipals.Request().GetAsync();
*** 

```