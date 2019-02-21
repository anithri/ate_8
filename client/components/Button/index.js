import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

const Button = ({
  className,
  doClick,
  label,
  iconBefore,
  iconAfter,
}) => (
  <button
    className={cx(className, styles.button)}
    onClick={() => doClick && doClick()}
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

Button.defaultProps = {
  doClick: e => e.preventDefault(),
}

export default Button
