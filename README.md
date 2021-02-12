# Redmine Out of Band Auth (2FA)

Redmine plugin that provides Out of Band authentication by email, 2FA via email.

## Install

1. `$ cd your_redmine_path`
2. `$ git clone https://github.com/0x2c4/redmine_out_of_band_auth.git plugin/redmine_out_of_band_auth`
3. `$ bundle install`
4. `$ bundle exec rake redmine:plugins:migrate NAME=redmine_out_of_band_auth RAILS_ENV=production`
5. web service restart

## Uninstall

1. `$ cd your_redmine_path`
2. `$ bundle exec rake redmine:plugins:migrate NAME=redmine_out_of_band_auth RAILS_ENV=production VERSION=0`
3. remove plugins/redmine_out_of_band_auth
4. web service restart

## Usage

* Check the `Enable out of band authentication` checkbox on the `Administrator > Users > username` or `My account page`.
  * Will send a `verification code` to the default notification email address from the next login.
* If you want to encrypt the `verification code`, register `database_cipher_key` in `your_redmine_path/config/configuration.yml` .
  * If you are already registering SCM or LDAP password, please carefully read the notes in `your_redmine_path/config/configuration.yml`, such as by running `rake db:encrypt RAILS_ENV=production` .

## Screenshot

*Out of Band Authentication*

![out_of_band_auth](https://user-images.githubusercontent.com/943541/27113242-b8037c56-50f6-11e7-9164-8f894a9568da.png)

*My account*

![my_account](https://user-images.githubusercontent.com/943541/27113251-bcd7bb5c-50f6-11e7-8510-93449c68897f.png)

*Verification code*

![verification_code](https://user-images.githubusercontent.com/943541/27115125-84d8007e-5103-11e7-9a9c-8f676eaa3aad.png)

## License

[The MIT License](https://opensource.org/licenses/MIT)

## Oryginal author of this plugin:

[matsukei](https://github.com/matsukei/redmine_out_of_band_auth)
