#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var resources = await graphClient.Education.Classes.Classes.Assignments.Assignments.Resources.Resources.Request().GetAsync();
*** 

```