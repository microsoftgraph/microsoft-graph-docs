#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var ownedObjects = await graphClient.Me.OwnedObjects.Request().GetAsync();
*** 

```