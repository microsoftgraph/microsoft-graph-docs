---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printJobConfiguration = new PrintJobConfiguration
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
};

var jobs = new PrintJob();
jobs.Configuration = printJobConfiguration;

await graphClient.Print.Printers["d5ef6ec4-07ca-4212-baf9-d45be126bfbb"].Jobs["44353"]
	.Request()
	.UpdateAsync(jobs);

```