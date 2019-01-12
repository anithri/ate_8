import { parseCard } from 'concerns/card'
import {parseWorkerList} from 'concerns/worker'

export const parseProject = ({ project }) => {
  console.log('parseProject', project)
  return {
    ...project,
    projectCard: parseCard(project.cards.projectCard),
    workers: parseWorkerList(project.workers),
  }
}
