#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var identityProviders = await graphClient.IdentityProviders.IdentityProviders.Request().GetAsync();
*** 

```