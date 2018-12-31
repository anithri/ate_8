import { faBars, faHome, faUser } from '@fortawesome/pro-solid-svg-icons'
import {
  faChevronDoubleLeft,
  faChevronDoubleRight,
} from '@fortawesome/pro-regular-svg-icons'
import { library } from '@fortawesome/fontawesome-svg-core'

const setupIcons = () => {
  library.add(faBars, faHome, faUser, faChevronDoubleRight, faChevronDoubleLeft)
}

export default setupIcons
