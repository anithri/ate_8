import {parseCard} from 'concerns/card'

export const parseProject = ({ project }) => {
  return {
    ...project,
    projectCard: parseCard(project.cards),
  }
}
