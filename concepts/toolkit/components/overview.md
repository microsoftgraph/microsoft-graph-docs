---
title: "Microsoft Graph Toolkit components"
description: "The Microsoft Graph Toolkit components share common logic and lifecycle."
localization_priority: Normal
author: shweaver
---

# Microsoft Graph Toolkit components

The Microsoft Graph Toolkit components share common logic and lifecycle. 

## Component lifecycle events

Components emit events during lifecycle transitions:

| Event | Description |
|-|-|
| updated | Fires whenever the element has finished updating. |
| templateRendered | Fires when a template slot has finished rendering. |
| loadingInitiated | Fires when a component is beginning to load state. |
| loadingCompleted | Fires when a component has finished loading state. |
| loadingFailed | Fires when a component fails to load state due to an internal error. |

These events can be useful for understanding the current state of a component during the various rendering phases.
