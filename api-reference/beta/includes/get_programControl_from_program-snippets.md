#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var controls = await graphClient.Programs.Programs.Controls.Request().GetAsync();
*** 

```