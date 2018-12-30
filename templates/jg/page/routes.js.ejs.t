---
inject: true
to: client/pages/index.js
before: page routes above here
lots: <% lots = h.inflection.pluralize(name) %>
className: <% className = h.inflection.camelize(name) %>
---
        <Route exact path="<%= lots %>" component={<%= className %>} />
