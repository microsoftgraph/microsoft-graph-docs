#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var scopedAdministratorOf = await graphClient.Me.ScopedAdministratorOf.Request().GetAsync();
*** 

```