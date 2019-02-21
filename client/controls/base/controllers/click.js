import cc from 'change-case'
import { createController } from '../controller'
import { asClick } from '../utils'

export const createClickControl = args =>
  createController({
    postMutation: asClick,
    ...args,
  })
