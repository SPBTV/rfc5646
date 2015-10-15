module Rfc5646
  require 'rfc5646/version'
  require 'rfc5646/locale'
  require 'i18n'

  I18n.load_path << File.expand_path('../data/locales/locales.en.yml', __FILE__)
end
