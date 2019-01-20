import { parseCard } from 'concerns/card'
import { parseWorkerList } from 'concerns/worker'

export const parseProject = ({ project }) => {
  return {
    ...project,
    card: parseCard(project.card),
    workers: parseWorkerList(project.workers),
  }
}
