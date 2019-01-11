import { parseCard } from 'concerns/card'

export const parseProject = ({ project }) => {
  console.log('parseProject', project)
  return {
    ...project,
    projectCard: parseCard(project.cards.projectCard),
  }
}
