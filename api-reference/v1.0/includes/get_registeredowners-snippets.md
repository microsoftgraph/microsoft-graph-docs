#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var registeredOwners = await graphClient.Devices.Devices.RegisteredOwners.Request().GetAsync();
*** 

```