import { parseWorkerList } from 'concerns/worker'

export const parseCard = (card) => {
  console.log(card)
  return {
    ...card,
    requiredWorkers: parseWorkerList(card.requiredWorkers),
  }
}
