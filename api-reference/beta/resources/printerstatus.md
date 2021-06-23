---
title: printerStatus resource type
description: Represents the processing status of the printer, including any errors.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printerStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the processing status of the printer, including any errors.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|state|printerProcessingState|The current processing state. Valid values are described in the following table. Read-only.|
|details|printerProcessingStateDetail collection|The list of details describing why the printer is in the current state. Valid values are described in the following table. Read-only.|
|description|String|A human-readable description of the printer's current processing state. Read-only.|

### printerProcessingState values

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|The processing state reported by the printer is unknown.|
|idle|1|The printer is idle and ready to accept new print jobs.|
|processing|2|The printer is currently processing a print job and will process any pending jobs upon completion.|
|stopped|3|The printer encountered an issue (for example, ran out of paper in the active tray) and cannot continue the current print job until the issue is addressed. See the **details** value(s) or the **description** value for more information.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|

### printerProcessingStateDetail values

|Member|Value|Description|
|:---|:---|:---|
|paused|0| An ongoing print job was paused.|
|mediaJam|2|Media in one or more trays is jammed.|
|mediaNeeded|3|Media in the currently-used input tray needs to be replaced before the job can continue.|
|mediaLow|4|Media in one or more trays is almost exhausted.|
|mediaEmpty|5|Media in one or more trays is exhausted.|
|coverOpen|6|One or more covers are open.|
|interlockOpen|7|One or more interlock devices are open.|
|outputTrayMissing|9|One or more output trays are missing.|
|outputAreaFull|10|One or more output trays are full and cannot accept more media.|
|markerSupplyLow|11|One or more marker sources (for example, ink, toner or ribbon) are low.|
|markerSupplyEmpty|12|One or more marker sources (for example, ink, toner or ribbon) are exhausted.|
|inputTrayMissing|13|One or more input trays are not in the device.|
|outputAreaAlmostFull|14|One or more output area is almost full (for example, tray, stacker, collator).|
|markerWasteAlmostFull|15|The device marker supply waste receptacle is almost full.|
|markerWasteFull|16|The device marker supply waste receptacle is full.|
|fuserOverTemp|17|The fuser temperature is above normal.|
|fuserUnderTemp|18|The fuser temperature is below normal.|
|other|19|Any other reason that does not fall in rest of the reasons.|
|none|20|No reasons.|
|movingToPaused|21|Someone paused the Printer using the Pause-Printer operation.|
|shutdown|22|Someone removed a Printer object from service, and the device may be powered down or physically removed.|
|connectingToDevice|23|Printer is in the process of connecting to a shared network Output Device.|
|timedOut|24|The server was unable to get a response from the output device.|
|stopping|25|The Printer object is in the process of stopping the device.|
|stoppedPartially|26|One or more output devices are stopped.|
|tonerLow|27|The device is low on toner.|
|tonerEmpty|28|The device is out of toner.|
|spoolAreaFull|29|The limit of persistent storage allocated for spooling has been reached.|
|doorOpen|30|One or more doors on the device are open.|
|opticalPhotoConductorNearEndOfLife|31|The optical photo conductor is near end of life.|
|opticalPhotoConductorLifeOver|32|The optical photo conductor is no longer functioning.|
|developerLow|33|The device is low on developer.|
|developerEmpty|34|The device is out of developer.|
|interpreterResourceUnavailable|35|An interpreter resource is unavailable (e.g. font, form).|
|alertRemovalOfBinaryChangeEntry|36|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderAdded|37|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderAlmostEmpty|38|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderAlmostFull|39|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderAtLimit|40|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderClosed|41|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderConfigurationChange|42|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderCoverClosed|43|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderCoverOpen|44|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderEmpty|45|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderFull|46|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderInterlockClosed|47|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderInterlockOpen|48|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderJam|49|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderLifeAlmostOver|50|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderLifeOver|51|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderMemoryExhausted|52|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderMissing|53|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderMotorFailure|54|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderNearLimit|55|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderOffline|56|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderOpened|57|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderOverTemperature|58|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderPowerSaver|59|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderRecoverableFailure|60|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderRecoverableStorage|61|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderRemoved|62|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderResourceAdded|63|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderResourceRemoved|64|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderThermistorFailure|65|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderTimingFailure|66|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderTurnedOff|67|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderTurnedOn|68|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderUnderTemperature|69|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderUnrecoverableFailure|70|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderUnrecoverableStorageError|71|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|banderWarmingUp|72|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderAdded|73|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderAlmostEmpty|74|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderAlmostFull|75|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderAtLimit|76|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderClosed|77|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderConfigurationChange|78|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderCoverClosed|79|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderCoverOpen|80|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderEmpty|81|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderFull|82|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderInterlockClosed|83|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderInterlockOpen|84|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderJam|85|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderLifeAlmostOver|86|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderLifeOver|87|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderMemoryExhausted|88|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderMissing|89|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderMotorFailure|90|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderNearLimit|91|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderOffline|92|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderOpened|93|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderOverTemperature|94|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderPowerSaver|95|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderRecoverableFailure|96|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderRecoverableStorage|97|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderRemoved|98|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderResourceAdded|99|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderResourceRemoved|100|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderThermistorFailure|101|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderTimingFailure|102|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderTurnedOff|103|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderTurnedOn|104|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderUnderTemperature|105|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderUnrecoverableFailure|106|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderUnrecoverableStorageError|107|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|binderWarmingUp|108|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|cameraFailure|109|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|chamberCooling|110|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|chamberFailure|111|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|chamberHeating|112|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|chamberTemperatureHigh|113|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|chamberTemperatureLow|114|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|cleanerLifeAlmostOver|115|This is a standard IPP Printer Attribute value described in PWG5100.13.|
|cleanerLifeOver|116|This is a standard IPP Printer Attribute value described in PWG5100.13.|
|configurationChange|117|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|deactivated|118|This is a standard IPP Printer Attribute value described in RFC3998.|
|deleted|119|This is a standard IPP Printer Attribute value described in PWG5100.22.|
|dieCutterAdded|120|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterAlmostEmpty|121|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterAlmostFull|122|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterAtLimit|123|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterClosed|124|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterConfigurationChange|125|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterCoverClosed|126|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterCoverOpen|127|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterEmpty|128|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterFull|129|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterInterlockClosed|130|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterInterlockOpen|131|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterJam|132|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterLifeAlmostOver|133|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterLifeOver|134|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterMemoryExhausted|135|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterMissing|136|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterMotorFailure|137|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterNearLimit|138|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterOffline|139|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterOpened|140|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterOverTemperature|141|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterPowerSaver|142|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterRecoverableFailure|143|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterRecoverableStorage|144|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterRemoved|145|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterResourceAdded|146|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterResourceRemoved|147|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterThermistorFailure|148|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterTimingFailure|149|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterTurnedOff|150|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterTurnedOn|151|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterUnderTemperature|152|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterUnrecoverableFailure|153|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterUnrecoverableStorageError|154|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|dieCutterWarmingUp|155|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|extruderCooling|156|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|extruderFailure|157|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|extruderHeating|158|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|extruderJam|159|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|extruderTemperatureHigh|160|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|extruderTemperatureLow|161|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|fanFailure|162|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|faxModemLifeAlmostOver|163|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|faxModemLifeOver|164|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|faxModemMissing|165|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|faxModemTurnedOff|166|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|faxModemTurnedOn|167|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|folderAdded|168|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderAlmostEmpty|169|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderAlmostFull|170|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderAtLimit|171|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderClosed|172|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderConfigurationChange|173|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderCoverClosed|174|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderCoverOpen|175|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderEmpty|176|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderFull|177|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderInterlockClosed|178|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderInterlockOpen|179|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderJam|180|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderLifeAlmostOver|181|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderLifeOver|182|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderMemoryExhausted|183|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderMissing|184|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderMotorFailure|185|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderNearLimit|186|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderOffline|187|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderOpened|188|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderOverTemperature|189|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderPowerSaver|190|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderRecoverableFailure|191|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderRecoverableStorage|192|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderRemoved|193|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderResourceAdded|194|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderResourceRemoved|195|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderThermistorFailure|196|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderTimingFailure|197|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderTurnedOff|198|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderTurnedOn|199|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderUnderTemperature|200|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderUnrecoverableFailure|201|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderUnrecoverableStorageError|202|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|folderWarmingUp|203|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|hibernate|204|This is a standard IPP Printer Attribute value described in PWG5106.4.|
|holdNewJobs|205|This is a standard IPP Printer Attribute value described in RFC3998.|
|identifyPrinterRequested|206|This is a standard IPP Printer Attribute value described in PWG5100.18.|
|imprinterAdded|207|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterAlmostEmpty|208|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterAlmostFull|209|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterAtLimit|210|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterClosed|211|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterConfigurationChange|212|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterCoverClosed|213|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterCoverOpen|214|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterEmpty|215|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterFull|216|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterInterlockClosed|217|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterInterlockOpen|218|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterJam|219|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterLifeAlmostOver|220|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterLifeOver|221|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterMemoryExhausted|222|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterMissing|223|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterMotorFailure|224|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterNearLimit|225|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterOffline|226|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterOpened|227|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterOverTemperature|228|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterPowerSaver|229|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterRecoverableFailure|230|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterRecoverableStorage|231|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterRemoved|232|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterResourceAdded|233|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterResourceRemoved|234|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterThermistorFailure|235|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterTimingFailure|236|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterTurnedOff|237|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterTurnedOn|238|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterUnderTemperature|239|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterUnrecoverableFailure|240|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterUnrecoverableStorageError|241|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|imprinterWarmingUp|242|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inputCannotFeedSizeSelected|243|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inputManualInputRequest|244|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inputMediaColorChange|245|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inputMediaFormPartsChange|246|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inputMediaSizeChange|247|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inputMediaTrayFailure|248|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|inputMediaTrayFeedError|249|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|inputMediaTrayJam|250|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|inputMediaTypeChange|251|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inputMediaWeightChange|252|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inputPickRollerFailure|253|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|inputPickRollerLifeOver|254|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|inputPickRollerLifeWarn|255|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|inputPickRollerMissing|256|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|inputTrayElevationFailure|257|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inputTrayPositionFailure|258|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterAdded|259|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterAlmostEmpty|260|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterAlmostFull|261|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterAtLimit|262|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterClosed|263|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterConfigurationChange|264|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterCoverClosed|265|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterCoverOpen|266|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterEmpty|267|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterFull|268|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterInterlockClosed|269|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterInterlockOpen|270|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterJam|271|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterLifeAlmostOver|272|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterLifeOver|273|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterMemoryExhausted|274|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterMissing|275|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterMotorFailure|276|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterNearLimit|277|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterOffline|278|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterOpened|279|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterOverTemperature|280|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterPowerSaver|281|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterRecoverableFailure|282|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterRecoverableStorage|283|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterRemoved|284|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterResourceAdded|285|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterResourceRemoved|286|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterThermistorFailure|287|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterTimingFailure|288|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterTurnedOff|289|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterTurnedOn|290|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterUnderTemperature|291|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterUnrecoverableFailure|292|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterUnrecoverableStorageError|293|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|inserterWarmingUp|294|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|interlockClosed|295|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|interpreterCartridgeAdded|296|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|interpreterCartridgeDeleted|297|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|interpreterComplexPageEncountered|298|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|interpreterMemoryDecrease|299|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|interpreterMemoryIncrease|300|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|interpreterResourceAdded|301|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|interpreterResourceDeleted|302|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|lampAtEol|303|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|lampFailure|304|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|lampNearEol|305|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|laserAtEol|306|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|laserFailure|307|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|laserNearEol|308|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|makeEnvelopeAdded|309|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeAlmostEmpty|310|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeAlmostFull|311|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeAtLimit|312|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeClosed|313|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeConfigurationChange|314|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeCoverClosed|315|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeCoverOpen|316|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeEmpty|317|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeFull|318|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeInterlockClosed|319|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeInterlockOpen|320|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeJam|321|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeLifeAlmostOver|322|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeLifeOver|323|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeMemoryExhausted|324|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeMissing|325|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeMotorFailure|326|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeNearLimit|327|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeOffline|328|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeOpened|329|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeOverTemperature|330|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopePowerSaver|331|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeRecoverableFailure|332|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeRecoverableStorage|333|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeRemoved|334|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeResourceAdded|335|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeResourceRemoved|336|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeThermistorFailure|337|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeTimingFailure|338|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeTurnedOff|339|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeTurnedOn|340|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeUnderTemperature|341|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeUnrecoverableFailure|342|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeUnrecoverableStorageError|343|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|makeEnvelopeWarmingUp|344|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerAdjustingPrintQuality|345|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerCleanerMissing|346|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|markerDeveloperAlmostEmpty|347|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerDeveloperEmpty|348|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerDeveloperMissing|349|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|markerFuserMissing|350|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|markerFuserThermistorFailure|351|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerFuserTimingFailure|352|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerInkAlmostEmpty|353|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerInkEmpty|354|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerInkMissing|355|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|markerOpcMissing|356|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|markerPrintRibbonAlmostEmpty|357|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerPrintRibbonEmpty|358|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerPrintRibbonMissing|359|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|markerSupplyAlmostEmpty|360|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|markerSupplyMissing|361|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|markerTonerCartridgeMissing|362|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerTonerMissing|363|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|markerWasteInkReceptacleAlmostFull|364|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerWasteInkReceptacleFull|365|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerWasteInkReceptacleMissing|366|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|markerWasteMissing|367|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|markerWasteTonerReceptacleAlmostFull|368|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerWasteTonerReceptacleFull|369|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|markerWasteTonerReceptacleMissing|370|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|materialEmpty|371|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|materialLow|372|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|materialNeeded|373|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|mediaDrying|374|This is a standard IPP Printer Attribute value described in HP20181213.|
|mediaPathCannotDuplexMediaSelected|375|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|mediaPathFailure|376|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|mediaPathInputEmpty|377|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|mediaPathInputFeedError|378|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|mediaPathInputJam|379|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|mediaPathInputRequest|380|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|mediaPathJam|381|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|mediaPathMediaTrayAlmostFull|382|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|mediaPathMediaTrayFull|383|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|mediaPathMediaTrayMissing|384|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|mediaPathOutputFeedError|385|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|mediaPathOutputFull|386|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|mediaPathOutputJam|387|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|mediaPathPickRollerFailure|388|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|mediaPathPickRollerLifeOver|389|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|mediaPathPickRollerLifeWarn|390|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|mediaPathPickRollerMissing|391|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|motorFailure|392|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|outputMailboxSelectFailure|393|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|outputMediaTrayFailure|394|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|outputMediaTrayFeedError|395|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|outputMediaTrayJam|396|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|perforaterAdded|397|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterAlmostEmpty|398|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterAlmostFull|399|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterAtLimit|400|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterClosed|401|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterConfigurationChange|402|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterCoverClosed|403|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterCoverOpen|404|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterEmpty|405|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterFull|406|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterInterlockClosed|407|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterInterlockOpen|408|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterJam|409|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterLifeAlmostOver|410|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterLifeOver|411|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterMemoryExhausted|412|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterMissing|413|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterMotorFailure|414|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterNearLimit|415|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterOffline|416|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterOpened|417|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterOverTemperature|418|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterPowerSaver|419|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterRecoverableFailure|420|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterRecoverableStorage|421|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterRemoved|422|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterResourceAdded|423|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterResourceRemoved|424|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterThermistorFailure|425|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterTimingFailure|426|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterTurnedOff|427|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterTurnedOn|428|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterUnderTemperature|429|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterUnrecoverableFailure|430|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterUnrecoverableStorageError|431|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|perforaterWarmingUp|432|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|platformCooling|433|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|platformFailure|434|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|platformHeating|435|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|platformTemperatureHigh|436|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|platformTemperatureLow|437|This is a standard IPP Printer Attribute value described in PWG5100.21.|
|powerDown|438|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|powerUp|439|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|printerManualReset|440|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|printerNmsReset|441|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|printerReadyToPrint|442|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherAdded|443|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherAlmostEmpty|444|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherAlmostFull|445|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherAtLimit|446|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherClosed|447|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherConfigurationChange|448|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherCoverClosed|449|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherCoverOpen|450|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherEmpty|451|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherFull|452|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherInterlockClosed|453|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherInterlockOpen|454|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherJam|455|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherLifeAlmostOver|456|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherLifeOver|457|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherMemoryExhausted|458|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherMissing|459|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherMotorFailure|460|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherNearLimit|461|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherOffline|462|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherOpened|463|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherOverTemperature|464|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherPowerSaver|465|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherRecoverableFailure|466|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherRecoverableStorage|467|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherRemoved|468|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherResourceAdded|469|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherResourceRemoved|470|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherThermistorFailure|471|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherTimingFailure|472|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherTurnedOff|473|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherTurnedOn|474|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherUnderTemperature|475|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherUnrecoverableFailure|476|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherUnrecoverableStorageError|477|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|puncherWarmingUp|478|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|resuming|479|This is a standard IPP Printer Attribute value described in PWG5100.22.|
|scanMediaPathFailure|480|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathInputEmpty|481|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathInputFeedError|482|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathInputJam|483|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathInputRequest|484|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathJam|485|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathOutputFeedError|486|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathOutputFull|487|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathOutputJam|488|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathPickRollerFailure|489|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathPickRollerLifeOver|490|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathPickRollerLifeWarn|491|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathPickRollerMissing|492|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathTrayAlmostFull|493|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathTrayFull|494|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scanMediaPathTrayMissing|495|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scannerLightFailure|496|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scannerLightLifeAlmostOver|497|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scannerLightLifeOver|498|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scannerLightMissing|499|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scannerSensorFailure|500|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scannerSensorLifeAlmostOver|501|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scannerSensorLifeOver|502|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|scannerSensorMissing|503|This is a standard IPP Printer Attribute value described in PWG5107.3.|
|separationCutterAdded|504|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterAlmostEmpty|505|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterAlmostFull|506|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterAtLimit|507|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterClosed|508|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterConfigurationChange|509|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterCoverClosed|510|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterCoverOpen|511|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterEmpty|512|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterFull|513|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterInterlockClosed|514|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterInterlockOpen|515|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterJam|516|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterLifeAlmostOver|517|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterLifeOver|518|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterMemoryExhausted|519|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterMissing|520|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterMotorFailure|521|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterNearLimit|522|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterOffline|523|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterOpened|524|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterOverTemperature|525|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterPowerSaver|526|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterRecoverableFailure|527|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterRecoverableStorage|528|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterRemoved|529|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterResourceAdded|530|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterResourceRemoved|531|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterThermistorFailure|532|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterTimingFailure|533|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterTurnedOff|534|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterTurnedOn|535|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterUnderTemperature|536|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterUnrecoverableFailure|537|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterUnrecoverableStorageError|538|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|separationCutterWarmingUp|539|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorAdded|540|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorAlmostEmpty|541|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorAlmostFull|542|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorAtLimit|543|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorClosed|544|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorConfigurationChange|545|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorCoverClosed|546|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorCoverOpen|547|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorEmpty|548|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorFull|549|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorInterlockClosed|550|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorInterlockOpen|551|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorJam|552|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorLifeAlmostOver|553|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorLifeOver|554|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorMemoryExhausted|555|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorMissing|556|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorMotorFailure|557|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorNearLimit|558|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorOffline|559|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorOpened|560|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorOverTemperature|561|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorPowerSaver|562|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorRecoverableFailure|563|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorRecoverableStorage|564|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorRemoved|565|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorResourceAdded|566|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorResourceRemoved|567|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorThermistorFailure|568|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorTimingFailure|569|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorTurnedOff|570|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorTurnedOn|571|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorUnderTemperature|572|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorUnrecoverableFailure|573|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorUnrecoverableStorageError|574|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|sheetRotatorWarmingUp|575|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterAdded|576|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterAlmostEmpty|577|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterAlmostFull|578|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterAtLimit|579|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterClosed|580|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterConfigurationChange|581|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterCoverClosed|582|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterCoverOpen|583|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterEmpty|584|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterFull|585|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterInterlockClosed|586|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterInterlockOpen|587|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterJam|588|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterLifeAlmostOver|589|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterLifeOver|590|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterMemoryExhausted|591|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterMissing|592|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterMotorFailure|593|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterNearLimit|594|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterOffline|595|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterOpened|596|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterOverTemperature|597|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterPowerSaver|598|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterRecoverableFailure|599|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterRecoverableStorage|600|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterRemoved|601|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterResourceAdded|602|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterResourceRemoved|603|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterThermistorFailure|604|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterTimingFailure|605|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterTurnedOff|606|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterTurnedOn|607|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterUnderTemperature|608|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterUnrecoverableFailure|609|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterUnrecoverableStorageError|610|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|slitterWarmingUp|611|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerAdded|612|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerAlmostEmpty|613|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerAlmostFull|614|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerAtLimit|615|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerClosed|616|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerConfigurationChange|617|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerCoverClosed|618|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerCoverOpen|619|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerEmpty|620|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerFull|621|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerInterlockClosed|622|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerInterlockOpen|623|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerJam|624|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerLifeAlmostOver|625|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerLifeOver|626|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerMemoryExhausted|627|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerMissing|628|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerMotorFailure|629|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerNearLimit|630|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerOffline|631|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerOpened|632|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerOverTemperature|633|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerPowerSaver|634|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerRecoverableFailure|635|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerRecoverableStorage|636|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerRemoved|637|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerResourceAdded|638|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerResourceRemoved|639|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerThermistorFailure|640|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerTimingFailure|641|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerTurnedOff|642|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerTurnedOn|643|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerUnderTemperature|644|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerUnrecoverableFailure|645|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerUnrecoverableStorageError|646|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stackerWarmingUp|647|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|standby|648|This is a standard IPP Printer Attribute value described in PWG5106.4.|
|staplerAdded|649|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerAlmostEmpty|650|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerAlmostFull|651|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerAtLimit|652|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerClosed|653|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerConfigurationChange|654|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerCoverClosed|655|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerCoverOpen|656|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerEmpty|657|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerFull|658|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerInterlockClosed|659|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerInterlockOpen|660|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerJam|661|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerLifeAlmostOver|662|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerLifeOver|663|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerMemoryExhausted|664|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerMissing|665|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerMotorFailure|666|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerNearLimit|667|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerOffline|668|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerOpened|669|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerOverTemperature|670|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerPowerSaver|671|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerRecoverableFailure|672|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerRecoverableStorage|673|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerRemoved|674|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerResourceAdded|675|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerResourceRemoved|676|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerThermistorFailure|677|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerTimingFailure|678|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerTurnedOff|679|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerTurnedOn|680|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerUnderTemperature|681|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerUnrecoverableFailure|682|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerUnrecoverableStorageError|683|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|staplerWarmingUp|684|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherAdded|685|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherAlmostEmpty|686|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherAlmostFull|687|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherAtLimit|688|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherClosed|689|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherConfigurationChange|690|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherCoverClosed|691|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherCoverOpen|692|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherEmpty|693|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherFull|694|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherInterlockClosed|695|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherInterlockOpen|696|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherJam|697|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherLifeAlmostOver|698|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherLifeOver|699|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherMemoryExhausted|700|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherMissing|701|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherMotorFailure|702|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherNearLimit|703|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherOffline|704|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherOpened|705|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherOverTemperature|706|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherPowerSaver|707|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherRecoverableFailure|708|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherRecoverableStorage|709|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherRemoved|710|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherResourceAdded|711|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherResourceRemoved|712|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherThermistorFailure|713|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherTimingFailure|714|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherTurnedOff|715|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherTurnedOn|716|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherUnderTemperature|717|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherUnrecoverableFailure|718|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherUnrecoverableStorageError|719|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|stitcherWarmingUp|720|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitAdded|721|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitAlmostEmpty|722|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitAlmostFull|723|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitAtLimit|724|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitClosed|725|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitCoolingDown|726|This is a standard IPP Printer Attribute value described in HPINC20180215.|
|subunitEmpty|727|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitFull|728|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitLifeAlmostOver|729|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitLifeOver|730|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitMemoryExhausted|731|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitMissing|732|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitMotorFailure|733|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitNearLimit|734|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitOffline|735|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitOpened|736|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitOverTemperature|737|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitPowerSaver|738|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitRecoverableFailure|739|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitRecoverableStorage|740|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitRemoved|741|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitResourceAdded|742|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitResourceRemoved|743|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitThermistorFailure|744|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitTimingFailure|745|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitTurnedOff|746|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitTurnedOn|747|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitUnderTemperature|748|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitUnrecoverableFailure|749|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitUnrecoverableStorage|750|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|subunitWarmingUp|751|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|suspend|752|This is a standard IPP Printer Attribute value described in PWG5106.4.|
|testing|753|This is a standard IPP Printer Attribute value described in PWG5100.22.|
|trimmerAdded|754|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerAlmostEmpty|755|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerAlmostFull|756|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerAtLimit|757|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerClosed|758|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerConfigurationChange|759|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerCoverClosed|760|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerCoverOpen|761|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerEmpty|762|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerFull|763|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerInterlockClosed|764|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerInterlockOpen|765|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerJam|766|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerLifeAlmostOver|767|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerLifeOver|768|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerMemoryExhausted|769|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerMissing|770|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerMotorFailure|771|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerNearLimit|772|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerOffline|773|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerOpened|774|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerOverTemperature|775|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerPowerSaver|776|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerRecoverableFailure|777|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerRecoverableStorage|778|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerRemoved|779|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerResourceAdded|780|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerResourceRemoved|781|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerThermistorFailure|782|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerTimingFailure|783|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerTurnedOff|784|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerTurnedOn|785|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerUnderTemperature|786|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerUnrecoverableFailure|787|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerUnrecoverableStorageError|788|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|trimmerWarmingUp|789|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|unknown|790|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperAdded|791|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperAlmostEmpty|792|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperAlmostFull|793|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperAtLimit|794|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperClosed|795|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperConfigurationChange|796|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperCoverClosed|797|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperCoverOpen|798|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperEmpty|799|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperFull|800|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperInterlockClosed|801|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperInterlockOpen|802|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperJam|803|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperLifeAlmostOver|804|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperLifeOver|805|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperMemoryExhausted|806|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperMissing|807|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperMotorFailure|808|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperNearLimit|809|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperOffline|810|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperOpened|811|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperOverTemperature|812|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperPowerSaver|813|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperRecoverableFailure|814|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperRecoverableStorage|815|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperRemoved|816|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperResourceAdded|817|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperResourceRemoved|818|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperThermistorFailure|819|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperTimingFailure|820|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperTurnedOff|821|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperTurnedOn|822|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperUnderTemperature|823|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperUnrecoverableFailure|824|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperUnrecoverableStorageError|825|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|wrapperWarmingUp|826|This is a standard IPP Printer Attribute value described in PWG5100.9.|
|unknownFutureValue|827|Evolvable enumeration sentinel value. Do not use.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerStatus"
}-->

```json
{
    "state": "String",
    "details": ["String"],
    "description": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

