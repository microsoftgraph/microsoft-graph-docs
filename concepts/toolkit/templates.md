---
title: "Templates in the Microsoft Graph Toolkit"
description: "Use custom templates to modify the content of a component."
localization_priority: Normal
author: nmetulev
---

# Templates in the Microsoft Graph Toolkit

Use custom templates to modify the content of a component.

All web components support templates based on the `<template>` element. For example, to override the template of a component, add a `<template>` element inside a component.

```html
<mgt-agenda>
  <template data-type="event">
      <div>{{event.subject}}</div>
      <div data-for='attendee in event.attendees'>
          <mgt-person person-query="{{attendee.emailAddress.name}}">
            <template>
              <div data-if="person.image">
                <img src="{{person.image}}" />
              </div>
              <div data-else>
                {{person.displayName}}
              </div>
            </template>
          </mgt-person>
      </div>
  </template>
</mgt-agenda>
```

## Data-type

Each component can have multiple parts that can be templated. For example, in the `mgt-agenda` component, you can template individual events, individual section headers, loading view, no data view, and more. To indicate the template, use the `data-type` attribute on a template. For example, to template each event in the `mgt-agenda`, use the `event` data-type, as shown.

```html
<mgt-agenda>
  <template data-type="event"> </template>
</mgt-agenda>
```

If no `data-type` is specified, the entire component will be replaced with the template. You can also use `data-type="default"` for the same purpose.

## Binding data

Many templates allow binding of data that is passed to the template as data context. For example, the `event` template in the `mgt-agenda` component passes an `{event}` object that can be used directly in the template. To expand an expression, such as `event.subject`, use the double curly brackets.

```html
<template data-type="event">
  <div>{{event.subject}}</div>
</template>
```

This format can also be used inside attributes:

```html
<template data-type="event">
  <a href="{{ event.onlineMeetingUrl }}" />
</template>
```

> **Note:** You can also expand objects such as `{{event}}` and they will render as JSON strings. This can be useful when you're developing the templates.

### Change binding syntax

By default, to expand an expression, you use double curly brackets ( `{{expression}}` ). However, you can change this syntax for environments where the double curly bracket syntax is already used. For example, the following example uses double square brackets ( `[[expression]]` ).

```ts
import { TemplateHelper } from '@microsoft/mgt';

TemplateHelper.setBindingSyntax('[[', ']]');
```

## Data context helper properties

The following properties can also be used with the data context object in your templates.

| Property | Description                                                                                                    |
|----------|----------------------------------------------------------------------------------------------------------------|
| $index   | Numerical index of item being rendered while being looped with `data-for`.                                     |
| $parent  | If a template is rendered inside another template, this property allows you to access the parent data context. |

The following example shows how to use the `$index` property in a data-for loop.

```html
<mgt-person>
  <mgt-person-card>
    <template data-type="additional-details">
      <span data-for="language in languages">
        {{ language.displayName }}<span data-if="$index < languages.length - 1">, </span>
      </span>
    </template>
  </mgt-person-card>
</mgt-person>
```

## Conditional rendering

You might only want to render elements when a condition is true or false based on the data context. The `data-if` and `data-else` attributes can evaluate an expression and render only if true or false.

```html
<mgt-person person-query="john doe">
  <template>
    <div data-if="person.image">
      <img src="{{ person.image }}" />
    </div>
    <div data-else>
      {{ person.displayName }}
    </div>
  </template>
</mgt-person>
```

## Looping

There will be cases where the data context object contains loop and you will need to loop over the data. For this scenario, use the `data-for` attribute.

```html
<template data-type="event">
  <ul>
    <li data-for='attendee in event.attendees'>
      {{ attendee.displayName }}
    </li>
  </ul>
</template>
```

## Template context

In scenarios where you need to convert data in your bindings, bind to events, or just use external data in your templates bindings, the templates support binding to external data context. You can add additional template context in two ways:

1. Directly on the component.

    Each component defines the `templateContext` property, which you can use to pass additional data to any template in the component.

    ```ts
    document.querySelector('mgt-agenda').templateContext = {

      someObject: {},
      formatDate: (date: Date) => { /* format date and return */ },
      someEventHandler: (e) => { /* handleEvent */  }

    }
    ```

    The properties in the `templateContext` object will now be available to be used in the binding expressions in the template.

2. Globally for all components.

    The `TemplateHelper` class exposes the `globalContext` object to add data or functions that should be globally available for all components.

    ```ts
    import { TemplateHelper } from '@microsoft/mgt';

    TemplateHelper.globalContext.someObject = {};
    TemplateHelper.globalContext.formatDate = (date: Date) => { /* format date and return */ };
    TemplateHelper.globalContext.someEventHandler = (e) => { /* handleEvent */  }
    ```



### Converters

In many cases, you might want to transform the data before presenting it in the template. For example, you might want to properly format a date before it is rendered. In these cases, you might want to use a template converter.

To use a template converter, you first need to define a function that will do the conversion. For example, you might define a function to convert an event object to a formatted time range.

```ts
document.querySelector('mgt-agenda').templateContext = {

  getTimeRange: (event) => {
    // TODO: format a string from the event object as you wish
    // timeRange = ...

    return timeRange;
  }

}
```

To use the converter in your template, use it as if you would use a function in code behind.

```html
<template data-type="event">
  <div>{{ getTimeRange(event) }}</div>
</template>
```

### Event or property binding

The `data-props` attribute allows you to add an event listener or set a property value directly in your templates.

```html
<template>
    <button data-props="{{@click: myEvent, myProp: value}}"></button>
</template>
```

The data-props accepts a comma delimited string for each property or event handler you might want to set.

To add an event handler, prefix the name of the event with `@`. The event handler will need to be available in the `templateContext` of the element.

```ts
document.querySelector('mgt-agenda').templateContext = {

  someEventHandler: (e, context, root) => { /* handleEvent */  }

}
```

```html
<template>
    <button data-props="{{@click: someEventHandler}}"></button>
</template>
```

The event args, data context, and the root element of the template are passed to the event handler as parameters.


## Template rendered event

In certain cases, you might want to get a reference to the rendered element. This can be useful if you want to handle the rendering of the content yourself, or you want to modify the rendered element.

In this scenario, you can use the `templateRendered` event, which fires after the template has been rendered.

```ts
let agenda = document.querySelector('mgt-agenda');
agenda.addEventListener('templateRendered', (e) => { });
```

The event details will contain a reference to the element that is being rendered, the data context object, and the type of the template.

```ts
agenda.addEventListener('templateRendered', (e) => {
  let templateType = e.detail.templateType;
  let dataContext = e.detail.context;
  let element = e.detail.element;

  if (templateType === 'event') {
    element.querySelector('.some-button').addEventListener('click', () => {});
  }
});
```

## Styling

The templates can be styled normally via CSS as they are rendered outside of the shadow dom.
