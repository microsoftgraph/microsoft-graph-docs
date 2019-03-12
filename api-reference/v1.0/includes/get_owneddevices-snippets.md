#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var ownedDevices = await graphClient.Me.OwnedDevices.Request().GetAsync();
*** 

```