#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var content = await graphClient.Me.Onenote.Resources.Resources.Content.Request().GetAsync();
*** 

```