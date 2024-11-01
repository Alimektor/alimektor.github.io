<%*
let fileName = tp.file.title
if (fileName.startsWith("Untitled") || fileName.startsWith("null")) {
	fileName = await tp.system.prompt("File name");
}
let documentTitle = await tp.system.prompt("Title");
let description = await tp.system.prompt("Description");
await tp.file.rename(`${fileName}`);
let today = tp.date.now("YYYY-MM-DD");
%>---
title: "<% documentTitle %>"
date: <% today %>
description: "<% description %>"
noindex: false
featured: false
pinned: false
series:
  - TODO
categories:
  - TODO
tags:
  - TODO
images: []
authors:
  - Alimektor
status: inprogress
---

<% tp.file.cursor() %>
