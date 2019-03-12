#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var charts = await graphClient.Me.Drive.Items.Items.Workbook.Worksheets.Worksheets.Charts.Request().GetAsync();
*** 

```