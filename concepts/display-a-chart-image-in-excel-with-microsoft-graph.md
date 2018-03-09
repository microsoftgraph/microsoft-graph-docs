# Display a chart image in Excel with Microsoft Graph

When you perform a [GET operation to retrieve a chart image](/api-reference/v1.0/api/chart_image.md), the Excel API returns the image as a base-64 string.

You can display the base-64 string inside an HTML image tag: `<img src="data:image/png;base64,{base-64 chart image string}/>`.

For default behavior, use `Image(width=0,height=0,fittingMode='fit')`. Here is an example of a chart image returned with the default parameters.

![Excel chart image with default height and width.](https://cdn.graph.office.net/prod/GraphDocuments/en-us/concepts/images/GetChart-default.png)

If you want to customize the display of the image, specify a height, width, and a fitting mode. Here is what the same chart image looks like if you retrieve it with these parameters: `Image(width=500,height=500,fittingMode='Fill')`.
