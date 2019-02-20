export const queryMatch = paramName => props => {
  return {
    [paramName]: props.match.params[paramName],
  }
}

export const queryById = concernId => props => ({
  [concernId]: props[concernId],
})

export const extractData = (concern, parser) => (props, data) => ({
  ...props,
  [concern]: parser(data[concern]),
})

export const emptyQuery = () => ({})
export const spreadData = (props, data) => ({ ...props, ...data })
export const asData = (props, data) => ({ ...props, data })
