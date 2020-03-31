---
title: "Get component in the Microsoft Graph Toolkit"
description: "A Get component allows you to make any GET query from Microsoft Graph directly in your HTML."
localization_priority: Normal
author: nmetulev
---

# Get component in the Microsoft Graph Toolkit

You can use `mgt-get` to make any GET query from Microsoft Graph directly in your HTML. The component does not provide a default UI and requires that you write a template.

## Example

The following example shows the use of the `mgt-get` component to display a user's emails. You can use the code editor to see how [properties and attributes](#properties-and-attributes) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-get--get-email&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-get--get-email&source=docs)

## Properties and attributes

You can use several attributes to change the behavior of the component. The only required attribute is `resource`.

| Attribute | Property  | Description |
| --- | --- | --- |
| resource | resource | The resource to get from Microsoft Graph (for example, `/me`). |
| scopes | scopes | Optional array of strings if using the property or a comma delimited scope if using the attribute. The component will use these scopes (with a supported provider) to ensure that the user has consented to the right permission. |
| version | version | Optional API version to use when making the GET request. Default is `v1.0`.  |
| max-pages | maxPages | Optional number of pages (for resources that support paging). Default is 3. Setting this value to 0 will get all pages.  |
| N/A | response | Read-only response from Microsoft Graph if request was successful.  |
| N/A |error| Read-only error from Microsoft Graph if request was not successful. |

## Events
| Event | Detail | Description |
| --- | --- | --- |
| dataChange | The detail contains the `response` and `error` objects. | Fired when the response or error change. |

## Templates

The `mgt-get` component supports several [templates](../templates.md) that you can use to define the look and feel. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type | Data context | Description |
| --- | --- | --- |
| default | The response from Microsoft Graph. | The default template is required to render the data coming from Microsoft Graph. |
| error | The error from Microsoft Graph. | This template will be used if there is an error making the request. |
| loading | N/A | This template is used while the request is being made. |

## Microsoft Graph permissions

For more information about permissions, see the Microsoft Graph [permissions reference](https://docs.microsoft.com/graph/permissions-reference). 

## Authentication

The control uses the global authentication provider described in the [authentication documentation](./../providers.md) to fetch the required data.
