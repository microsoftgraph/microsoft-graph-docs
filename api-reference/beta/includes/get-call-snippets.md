#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calls = await graphClient.App.Calls.Calls.Request().GetAsync();
*** 

```