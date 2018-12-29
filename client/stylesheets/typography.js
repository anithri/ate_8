/*
 * Copyright (c) 2018. CPP, Inc. All rights reserved.
 * Also protected by Patent Pending: 15/916,593
 */

import Typography from 'typography'
import theme from 'typography-theme-wordpress-2012'

theme.title = 'CPP Theme 2018'
theme.baseFontSize = '16px'
theme.scaleRatio = 2.25
theme.baseLineHeight = 1.5
theme.googleFonts = [
  { name: 'Open Sans', styles: ['400', '400i', '700'] },
  { name: 'Advent Pro', styles: ['500', '600'] },
]
theme.headerFontFamily = ['Advent Pro', 'sans-serif']
theme.headerWeight = '600'
theme.headerGrayHue = 'warm'
theme.bodyGrayHue = 'slate'
theme.includeNormalize = true
theme.blockMarginBottom = 'var(--spacing-medium)'
theme.overrideStyles = {
  'h1,h2,h3,h4,h5,h6': {
    marginBottom: 'var(--spacing-extra-small)'
  },
  'h4,h5,h6': {
    fontWeight: '500',
  },
}
const typography = new Typography(theme)

export default typography
