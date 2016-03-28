# Excel REST API

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
