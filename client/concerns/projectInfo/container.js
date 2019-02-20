import { createByIdContainer } from '../base'
import { GET_PROJECT_INFO } from './query'
import { parseProjectInfo } from './utils'

export const ProjectInfoContainer = args =>
  createByIdContainer({
    concern: 'projectInfo',
    parser: parseProjectInfo,
    query: GET_PROJECT_INFO,
    ...args,
  })
