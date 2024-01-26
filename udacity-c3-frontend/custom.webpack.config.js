const webpack = require('webpack');
console.log('The custom config is used');

module.exports = {
    plugins: [
      new webpack.DefinePlugin({
        'process.env': JSON.stringify(dotenv.parsed),
        'process.env.API_HOST': JSON.stringify(process.env.API_HOST),
      }),
    ].filter(Boolean)
}
