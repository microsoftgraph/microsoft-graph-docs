#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var oAuth2Permissiongrants = await graphClient.ServicePrincipals.ServicePrincipals.OAuth2Permissiongrants.Request().GetAsync();
*** 

```