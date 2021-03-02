---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printJob = new PrintJob
{
	Configuration = new PrintJobConfiguration
	{
		FeedOrientation = PrinterFeedOrientation.LongEdgeFirst,
		PageRanges = new List<IntegerRange>()
		{
			new IntegerRange
			{
				Start = 1,
				End = 1
			}
		},
		Quality = PrintQuality.Medium,
		Dpi = 600,
		Orientation = PrintOrientation.Landscape,
		Copies = 1,
		DuplexMode = PrintDuplexMode.OneSided,
		ColorMode = PrintColorMode.BlackAndWhite,
		InputBin = "by-pass-tray",
		OutputBin = "output-tray",
		MediaSize = "A4",
		Margin = new PrintMargin
		{
			Top = 0,
			Bottom = 0,
			Left = 0,
			Right = 0
		},
		MediaType = "stationery",
		Finishings = null,
		PagesPerSheet = 1,
		MultipageLayout = PrintMultipageLayout.ClockwiseFromBottomLeft,
		Collate = false,
		Scaling = PrintScaling.ShrinkToFit,
		FitPdfToPage = false
	}
};

await graphClient.Print.Shares["{id}"].Jobs
	.Request()
	.AddAsync(printJob);

```