---
to: <%= mkPath('list/utils.js') %>
---
export const <%= listParseName %> = ({ all }) => {
  return all.map(({ <%= varName %> }) => <%= varName %>)
}
