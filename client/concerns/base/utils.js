export const queryMatch = paramName => props => {
  return {
    [paramName]: props.match.params[paramName],
  }
}
export const queryMatchSearch = paramName => props => {
  return {
    [paramName]: props.match.params[paramName],
    search: props.match.location.search || '',
  }
}

export const queryById = concernId => props => ({
  [concernId]: props[concernId],
})

export const extractData = (concern, parser) => (props, data) => ({
  ...props,
  [concern]: parser(data),
})

export const emptyQuery = () => ({})
export const spreadData = (props, data) => ({ ...props, ...data })
export const asData = (props, data) => ({ ...props, data })
