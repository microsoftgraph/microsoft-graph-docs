#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var ownedObjects = await graphClient.Me.OwnedObjects.Request().GetAsync();
*** 

```