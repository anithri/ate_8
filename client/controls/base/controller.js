import { useMutation } from 'react-apollo-hooks'
import React from 'react'
import { variablesMutation, noOp, asDoMutation } from './utils'
export const createController = args => {
  const {
    Input,
    displayName = 'UnknownControl',
    mutation,
    preMutation = variablesMutation,
    updateMutation: noOp,
    postMutation = asDoMutation,
    propTypes = {},
  } = args

  const container = props => {
    const variables = preMutation(props)

    const doMutation = useMutation(mutation, {
      update: noOp,
      variables,
    })

    const controlProps = postMutation(props, doMutation)

    return <Input {...controlProps} />
  }

  container.displayName = displayName
  container.propTypes = propTypes

  return container
}
