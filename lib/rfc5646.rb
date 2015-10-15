module Rfc5646
  require 'rfc5646/version'
  require 'rfc5646/locale'
  require 'i18n'

  locales = Pathname.new(__FILE__).dirname.join('data', 'locales', 'locales.en.yml').to_s
  I18n.backend.load_translations(locales)
end
