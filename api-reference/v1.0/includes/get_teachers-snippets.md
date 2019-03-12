#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var teachers = await graphClient.Education.Classes.Classes.Teachers.Request().GetAsync();
*** 

```