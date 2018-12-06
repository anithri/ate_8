import { library } from '@fortawesome/fontawesome-svg-core'
import { faChevronDoubleRight, faChevronDoubleLeft } from '@fortawesome/pro-regular-svg-icons'
import { faBars, faHome} from '@fortawesome/pro-solid-svg-icons'

const setupIcons = () => {
  library.add(faBars, faHome, faChevronDoubleRight, faChevronDoubleLeft)
}
export default setupIcons
