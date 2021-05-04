---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String destinationPrinterId = "9a3b3956-ce5b-4d06-a605-5b0bd3e9ddea";

PrintJobConfiguration configuration = new PrintJobConfiguration();
configuration.feedOrientation = PrinterFeedOrientation.LONG_EDGE_FIRST;
LinkedList<IntegerRange> pageRangesList = new LinkedList<IntegerRange>();
IntegerRange pageRanges = new IntegerRange();
pageRanges.start = 1L;
pageRanges.end = 1L;
pageRangesList.add(pageRanges);
configuration.pageRanges = pageRangesList;
configuration.quality = PrintQuality.MEDIUM;
configuration.dpi = 600;
configuration.orientation = PrintOrientation.LANDSCAPE;
configuration.copies = 1;
configuration.duplexMode = PrintDuplexMode.ONE_SIDED;
configuration.colorMode = PrintColorMode.BLACK_AND_WHITE;
configuration.inputBin = "by-pass-tray";
configuration.outputBin = "output-tray";
configuration.mediaSize = "A4";
PrintMargin margin = new PrintMargin();
margin.top = 0;
margin.bottom = 0;
margin.left = 0;
margin.right = 0;
configuration.margin = margin;
configuration.mediaType = "stationery";
configuration.finishings = null;
configuration.pagesPerSheet = 1;
configuration.multipageLayout = PrintMultipageLayout.CLOCKWISE_FROM_BOTTOM_LEFT;
configuration.collate = false;
configuration.scaling = PrintScaling.SHRINK_TO_FIT;
configuration.fitPdfToPage = false;

graphClient.print().printers("d5ef6ec4-07ca-4212-baf9-d45be126bfbb").jobs("44353")
	.redirect(PrintJobRedirectParameterSet
		.newBuilder()
		.withDestinationPrinterId(destinationPrinterId)
		.withConfiguration(configuration)
		.build())
	.buildRequest()
	.post();

```