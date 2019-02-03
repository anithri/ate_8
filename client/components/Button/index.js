import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

const Button = ({ className, control, label, iconBefore, iconAfter }) => (
  <button
    className={cx(className, styles.button)}
    onClick={() => control && control()}
  >
    {iconBefore && <FontAwesomeIcon icon={iconBefore} />}
    {label}
    {iconAfter && <FontAwesomeIcon icon={iconAfter} />}
  </button>
)

Button.propTypes = {
  className: PropTypes.string,
  control: PropTypes.func,
  iconAfter: PropTypes.string,
  iconBefore: PropTypes.string,
  label: PropTypes.string,
}

Button.defaultPropTypes = {
  control: e => e.preventDefault(),
}

export default Button
