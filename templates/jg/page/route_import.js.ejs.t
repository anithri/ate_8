---
inject: true
to: client/pages/index.js
before: new imports above here
className: <% className = h.inflection.camelize(name) %>
---
import <%= className %> from 'pages/<%= className %>'
