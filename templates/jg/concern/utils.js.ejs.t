---
to: <%= h.src('concerns', className, 'utils.js') %>
---
export const normalizeData = <%= dataName %>Data => {
  return <%= dataName %>Data.all.map(g => g.game)
}

export default normalizeData
