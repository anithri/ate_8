import { normalizeWorkers } from 'concerns/worker/utils'

export const normalizePlayer = playerData => {
  // console.log('normalizePlayer', playerData)
  return {
    ...playerData,
    workers: normalizeWorkers(playerData.workers),
  }
}

export const normalizePlayers = playerData => {
  // console.log('normalizePlayers', playerData)
  return playerData.all.map(({ player }) => player)
}
