import {
  faBars,
  faHome,
  faUser,
  faUserCheck,
} from '@fortawesome/pro-solid-svg-icons'
import {
  faCheckCircle,
  faChevronDoubleLeft,
  faChevronDoubleRight,
} from '@fortawesome/pro-regular-svg-icons'
import { library } from '@fortawesome/fontawesome-svg-core'

const setupIcons = () => {
  library.add(
    faBars,
    faCheckCircle,
    faChevronDoubleRight,
    faChevronDoubleLeft,
    faHome,
    faUser,
    faUserCheck,
  )
}

export default setupIcons
