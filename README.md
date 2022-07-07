# README Blog App

## Install Settings

### install dependencies
Run commands above to install dependencies to Rails. In Rails version 7 the <i>rails-ujs</i> is removed.
<br>
`$ rails importmap:install `
<br>
`$ rails turbo:install stimulus:install`

## Custom Config
In file app/config/custom_config.rb there are custom enviroment config that corresponds to deployment enviroments.
<br>
This blog application depends on Lorem Ipsum API ([Project](https://github.com/FLATANDRE/ipsumloremgenerator_api))