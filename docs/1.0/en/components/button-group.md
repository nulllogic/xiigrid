---
layout: ~/layouts/docs.astro
title: Button group
description: Group a series of buttons together on a single line or stack them in a vertical column.
group: components
toc: true
---

## Basic example

Wrap a series of buttons with `.btn` in `.btn-group`.

{{< example >}}
<div class="btn-group" role="group" aria-label="Basic example">
  <button type="button" class="btn btn-default">Left</button>
  <button type="button" class="btn btn-default">Middle</button>
  <button type="button" class="btn btn-default">Right</button>
</div>
{{< /example >}}