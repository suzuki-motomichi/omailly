// config/webpack/environment.js
const { environment } = require('@rails/webpacker')

// ↓ 追記部分
const webpack = require('webpack')
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: 'popper.js'
  })
)

module.exports = environment