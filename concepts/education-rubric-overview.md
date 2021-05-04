---
title: "Education rubric overview"
description: "Rubrics are an effective and widely-used way of grading assignments, and the education API in Microsoft Graph supports them."
author: "mmast-msft"
localization_priority: Priority
ms.prod: "education"
---

# Education rubric overview

Rubrics are an effective and widely-used way of grading assignments, and the education API in Microsoft Graph supports them.

A grading rubric is a matrix of *qualities*, *levels*, and *criteria*, as follows:

| &nbsp;  | Level     | Level     |
|:--------|:----------|:----------|
| Quality | Criterion | Criterion |
| Quality | Criterion | Criterion |

An example of a grading rubric might be:

| &nbsp;               | Good                                                              | Poor                                                      |
|:---------------------|:------------------------------------------------------------------|:----------------------------------------------------------|
| Argument             | The essay's argument is persuasive.                               | The essay's argument does not make sense.                 |
| Spelling and Grammar | The essay uses proper spelling and grammar with few or no errors. | The essay has numerous errors in spelling and/or grammar. |

Grading using a rubric involves selecting one *level* for each *quality* in the rubric.

A rubric *may* have points associated with each level, and a weight associated with each quality.  If present, weights must add up to 100.

| &nbsp;                           | Good (2 points)                                                   | Poor (1 point)                                            |
|:---------------------------------|:------------------------------------------------------------------|:----------------------------------------------------------|
| Argument (weight 50)             | The essay's argument is persuasive.                               | The essay's argument does not make sense.                 |
| Spelling and Grammar (weight 50) | The essay uses proper spelling and grammar with few or no errors. | The essay has numerous errors in spelling and/or grammar. |

## API reference

To begin using rubrics, start with the [educationRubric resource in Microsoft Graph beta](/graph/api/resources/educationrubric?view=graph-rest-beta) and associated methods.
