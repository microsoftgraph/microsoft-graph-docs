#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var templates = await graphClient.ServicePrincipals.ServicePrincipals.Synchronization.Templates.Request().GetAsync();
*** 

```