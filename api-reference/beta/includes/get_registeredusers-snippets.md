#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var registeredUsers = await graphClient.Devices.Devices.RegisteredUsers.Request().GetAsync();
*** 

```