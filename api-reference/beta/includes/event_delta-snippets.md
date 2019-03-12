#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var delta = await graphClient.Me.Calendarview.Delta.Request().GetAsync();
*** 

```