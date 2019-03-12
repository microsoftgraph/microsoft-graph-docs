#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var devices = await graphClient.Devices.Devices.Request().GetAsync();
*** 

```