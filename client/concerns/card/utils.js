import { parseWorkerList } from 'concerns/worker'

export const parseCard = (card) => {
  return {
    ...card,
    requiredWorkers: parseWorkerList(card.requiredWorkers),
  }
}
