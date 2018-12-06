import PropTypes from 'prop-types'
import cx from 'classnames'
import {Query} from 'react-apollo'
import React from 'react'
import {GET_TUNNEL_NAVIGATION} from '../../models/TunnelNavigation'
import styles from './Home.module.css'
import PageHeader from '../../components/PageHeader'
import {stack as Menu} from 'react-burger-menu'
class HomePage extends React.Component {
  render() {
    const {children, className} = this.props
    return (
        <Query query={GET_TUNNEL_NAVIGATION}>
          {({data, error, loading}) => {
            if (error) return 'Error'
            if (loading) return 'Loading'
            const user = data.currentUser
            const pageClasses = cx('pageWrapper', className, styles.homePage)
            return (
                <div id="homePage" className={pageClasses} >
                  <Menu noOverlay pageWrapId={'tunnelLogs'} customBurgerIcon={ false }>
                    <a id="home" className="menu-item" href="/app/assets/config">Home</a>
                    <a id="about" className="menu-item" href="/about">About</a>
                    <a id="contact" className="menu-item" href="/contact">Contact</a>
                  </Menu>

                  <PageHeader/>
                  {children}
                  <main>
                    <h1>Hiya</h1>
                    <p>How are you?</p>
                    <a href="/logout" data-method="delete">
                      Logout {user.name}
                    </a>
                  </main>
                </div>
            )
          }}
        </Query>
    )
  }
}

HomePage.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
}

export default HomePage
