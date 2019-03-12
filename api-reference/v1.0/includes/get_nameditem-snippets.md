#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var names = await graphClient.Me.Drive.Items.Items.Workbook.Names.Names.Request().GetAsync();
*** 

```