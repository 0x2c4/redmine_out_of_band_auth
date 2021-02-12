Redmine::Plugin.register :redmine_out_of_band_auth do
  name 'Redmine Out of Band Authentication plugin'
  author '0x2c4'
  description 'Redmine plugin that provides Out of Band authentication by email.'
  version '1.0.1'
  requires_redmine version_or_higher: '4.0.0'
  url 'https://github.com/0x2c4/redmine_out_of_band_auth'
end

require_relative 'lib/out_of_band_auth'
