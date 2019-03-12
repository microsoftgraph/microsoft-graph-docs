#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var taskGroups = await graphClient.Me.Outlook.TaskGroups.TaskGroups.Request().GetAsync();
*** 

```