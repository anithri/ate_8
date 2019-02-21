export const mutationById = concernId => props => ({
  [concernId]: props[concernId],
})

export const noOp = () => true

export const variablesMutation = ({ variables }) => variables || {}

export const asClick = (props, doClick) => ({
  ...props,
  doClick,
})

export const asDoMutation = (props, doMutation) => ({
  ...props,
  doMutation,
})
