# Excel REST API

**Note:** _The Excel REST APIs are not yet released. We look forward to adding more reference material and making the APIs available as part of the Microsoft Graph /beta API set. Some of the highlights of upcoming APIs are listed below._

## Objects 

* Worksheet: The Worksheet object is a member of the Worksheets collection. The Worksheets collection contains all the Worksheet objects in a workbook.
	* Worksheet Collection: A collection of all the Workbook objects that are part of the workbook. 
* Range: Range represents a cell, a row, a column, a selection of cells containing one or more contiguous blocks of cells.  
* Table: Represents collection of organized cells designed to make management of the data easy. 
	* Table Collection: A collection of Tables in a workbook or worksheet. 
	* TableColumn Collection: A collection of all the columns in a Table. 
	* TableRow Collection: A collection of all the rows in a Table. 
* Chart: Represents a chart object in a workbook, which is a visual representation of underlying data.  
	* Chart Collection: A collection of charts in a workbook or a worksheet	
* NamedItem: Represents a defined name for a range of cells or a value. Names can be primitive named objects (as seen in the type below), range object, etc.
  * NamedItem Collection: a collection of named items of a workbook.
* Create Session: Create Excel workbook sessions. It is a good practice to create workbook session and pass it along with the request as part of the request header as it allows the server to link the API request to an existing in-memory copy of the file on the server. 