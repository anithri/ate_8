---
inject: true
to: <%= routePath %>
before: page routes above here
---
        <Route exact path="<%= pageRoute %>" component={<%= pageClass %>} />
