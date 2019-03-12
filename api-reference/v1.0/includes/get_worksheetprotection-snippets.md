#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var protection = await graphClient.Me.Drive.Items.Items.Workbook.Worksheets.Worksheets.Protection.Request().GetAsync();
*** 

```