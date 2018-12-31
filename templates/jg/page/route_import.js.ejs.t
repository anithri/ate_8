---
inject: true
to: <%= h.src('pages', 'index.js') %>
before: new imports above here
---
import <%= pageName %> from 'pages/<%= baseName %>'
