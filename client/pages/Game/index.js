import { GameContainer, gameShape } from 'concerns/game'
import cx from 'classnames'
import DraftBarPane from 'panes/DraftBar'
import GameFrame from './Frame'
import Messages from 'components/Messages'
import PlayerCard from 'panes/PlayerCard'
import ProjectCard from 'panes/ProjectCard'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import Title from 'components/Title'

class GamePage extends React.Component {
  componentDidMount() {
    this.setState({ check: 1 })
  }
  render() {
    const { game, className } = this.props

    const players = game.players.map(({ id, slug }) => (
      <PlayerCard
        key={`${slug}-PlayerCard`}
        playerId={id}
        className={styles[slug]}
      />
    ))
    const projects = game.projects.map(({ id, slug }) => (
      <ProjectCard
        key={`${slug}-ProjectCard}`}
        projectId={id}
        className={styles[slug]}
      />
    ))

    return (
      <main className={cx(className, styles.page)}>
        <GameFrame />
        <Title className={styles.title} game={game} />
        <Messages className={styles.messages} game={game} />
        <DraftBarPane
          className={styles[game.orientation]}
          workerBagId={game.draftBar.id}
        />
        {players}
        {projects}
      </main>
    )
  }
}

GamePage.propTypes = {
  className: PropTypes.string,
  game: gameShape.isRequired,
}

export default GameContainer({ Display: GamePage })
