const path = require('path')
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  target: 'web',
  entry: path.resolve(__dirname,'./src/index.ts'),
  resolve: {
    extensions: ['.tsx', '.ts', '.js','.jpg'],
  },
  output: {
    path: path.resolve(__dirname, 'dist/'),
    filename: 'bundle.js',
    // publicPath: 'public'
  },
  mode:"development",
  devtool: 'inline-source-map',
  devServer: {
    static: './dist',
   hot: true,
  },
  module: {
    rules: [
      {
        test: /\.(ts|tsx)$/,
        use: 'ts-loader',
        exclude: /node_modules/,
      },
      {
        test: /\.(png|jpg|gif)$/i,
        use: [
          {
            loader: 'file-loader',
            options: {
              name: 'images/[name].[ext]',

            }
          },
        ],
      },
      {
        test: /\.scss$/,
        use: [
          'style-loader',
          'css-loader',
          'sass-loader'
        ]
      },
      // {
      {
        test: /\.css$/,
        use: [
          'style-loader',
          'css-loader',
        ]
      },

    ]
  },
  plugins: [new HtmlWebpackPlugin({
    template: './src/index.html'
  })],

}