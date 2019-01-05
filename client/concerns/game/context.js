import React from 'react'

const gameData = React.createContext({
  workerTypes: [],
})

export const GameDataProvider = gameData.Provider
export const GameDataConsumer = gameData.Consumer
