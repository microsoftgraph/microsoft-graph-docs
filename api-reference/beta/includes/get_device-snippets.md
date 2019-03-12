#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var devices = await graphClient.Devices.Devices.Request().GetAsync();
*** 

```