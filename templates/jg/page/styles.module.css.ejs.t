---
to: <%= h.src('pages', Name, `${Name}.module.css`) %>
---
.<%= name %>Page {
  grid-template-rows: auto 1fr;

  & > header > h1 {
    font-size: var(--font-size-2);
  }

  & > nav {
    align-content:unset;
    align-items: unset;
    & > ul > li {
      list-style: none;
    }
  }
}