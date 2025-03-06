---
title: Shebang
description: How to Use Shebang in Scripts?
noindex: false
featured: false
pinned: false
series:
- Scripting
tags:
- linux
- bash
- coding
categories:
- Linux
images: []
authors:
- Alimektor
status: final
---


To execute a script file using an executable found in the `PATH` environment variable using the `env` executable, you must specify the absolute path to the env executable with the required interpreter argument on the first line of the script file:

```bash
#!/usr/bin/env bash
```

```python
#!/usr/bin/env python3
```

```python
#!/usr/bin/env python2
```

```perl
#!/usr/bin/env perl
```

> Important: the way to create shebang described here is portable. You can also use `#!/bin/bash`, but it may unfortunately not be available in some distributions.
