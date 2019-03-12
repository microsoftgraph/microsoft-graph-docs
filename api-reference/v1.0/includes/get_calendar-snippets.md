#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendar = await graphClient.Me.Calendar.Request().GetAsync();
*** 

```