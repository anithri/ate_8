import { createByIdContainer } from '../base'
import { GET_PROJECT } from './query'
import { parseProject } from './utils'

export const ProjectContainer = args =>
  createByIdContainer({
    concern: 'project',
    parser: parseProject,
    query: GET_PROJECT,
    ...args,
  })
