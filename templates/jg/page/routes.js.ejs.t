---
inject: true
to: <%= h.src('pages', 'index.js') %>
before: page routes above here
---
        <Route exact path="<%= routePath %>" component={<%= pageName %>} />
