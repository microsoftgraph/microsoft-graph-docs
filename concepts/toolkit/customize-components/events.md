---
title: "Handle events exposed by Microsoft Graph Toolkit components"
description: "Many Microsoft Graph Toolkit components emit custom events. Attaching event handlers to these events allows you to respond to them and control the behavior of your app."
localization_priority: Normal
author: waldekmastykarz
---

# Handle events exposed by Microsoft Graph Toolkit components

Many Microsoft Graph Toolkit components emit custom events. Attaching event handlers to these events allows you to respond to them and control the behavior of your app.

## Discover which events components emit

Each Microsoft Graph Toolkit component emits different events, specific to its functionality. To see the list of events emitted by the specific component, see the **Events** section of the documentation for that component.

> [!IMPORTANT]
> Some events, like `itemClick` in the File list component, are emitted only when using the default template. If you use a custom template, you overwrite the default rendering that is responsible for emitting the event.

## Add event handlers to events

Microsoft Graph Toolkit uses the standard [`EventTarget.dispatchEvent()`](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent) function to emit custom events in its components. To attach an event handler to a custom event emitted by a toolkit's component, use the standard [`EventTarget.addEventListener()`](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener) function.

For example, to handle the `itemClick` event emitted by the File list component, add the following to your code.

```javascript
document.querySelector('mgt-file-list').addEventListener('itemClick' e => {
  // your event handler code goes here
});
```

### Access additional information exposed by the event

Some events emitted by Microsoft Graph Toolkit contain additional information relevant to the event. For example, the `itemClick` event, emitted by the File list component, contains information about the file that was clicked in the file list. To see if the particular event contains additional information, see the **Events** section of the documentation for the corresponding component.

You can access the additional information exposed by an event through the `details` property of the `event` object passed into your event handler, as shown in the following example.

```javascript
document.querySelector('mgt-file-list').addEventListener('itemClick', e => {
  const clickedFile = e.details;
});
```
