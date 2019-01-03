import { normalizeWorkers } from 'concerns/Worker/utils'

export const normalizePlayer = playerData => {
  console.log('normalizePlayer', playerData)
  return {
    ...playerData,
    workers: normalizeWorkers(playerData.workers),
  }
}

export const normalizePlayers = playerData => {
  console.log(playerData)
  return playerData.all.map(({ player }) => player)
}
