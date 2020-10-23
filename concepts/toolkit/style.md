---
title: "Styling the Microsoft Graph Toolkit"
description: "Use CSS custom properties to modify the component styles"
localization_priority: Normal
author: nmetulev
---

# Styling components in the Microsoft Graph Toolkit

Use CSS custom properties to modify the component styles.

Each component documents a set of [CSS custom properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties) that you can use to change the look and feel of certain elements. For example:

```css
mgt-person {
  --avatar-size: 34px;
}
```

You can't style internal elements of a component unless you provide a CSS custom property. The component child elements are hosted in a [shadow dom](https://developer.mozilla.org/en-US/docs/Web/Web_Components/Using_shadow_DOM).

For more flexibility, consider using [custom templates](./templates.md).

## Disable the shadow dom (experimental)

You can disable the shadow dom, and directly style internal elements using normal browser stylesheets, by setting the static property `useShadowDom` of the `MgtBaseComponent` class to false before using any MGT tags.


```html
<script type="module">
  import { MgtBaseComponent } from './dist/es6/components/baseComponent.js';
   MgtBaseComponent.useShadowRoot = false;
</script>

<script type="module" src="./dist/es6/components/mgt-tasks/mgt-tasks.js"></script>
````
