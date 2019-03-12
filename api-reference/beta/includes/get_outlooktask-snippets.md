#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var tasks = await graphClient.Me.Outlook.Tasks.Tasks.Request().GetAsync();
*** 

```