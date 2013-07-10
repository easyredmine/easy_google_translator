require 'redmine'

unless Object.const_defined?(:EASY_EXTENSIONS_ENABLED)
  if Object.const_defined?(:EasyExtensions)
    EASY_EXTENSIONS_ENABLED = true
  else
    EASY_EXTENSIONS_ENABLED = false
  end
end

Redmine::Plugin.register :easy_google_translator do
  name(EASY_EXTENSIONS_ENABLED ? :easy_google_translator_plugin_name : 'Google translator')
  author(EASY_EXTENSIONS_ENABLED ? :easy_google_translator_plugin_author : 'Easy Software')
  author_url(EASY_EXTENSIONS_ENABLED ? :easy_google_translator_plugin_author_url : 'http://www.easyredmine.com')
  description(EASY_EXTENSIONS_ENABLED ? :easy_google_translator_plugin_description : '- Automatic translation of Redmine')
  version '2013'
  visible(false) if EASY_EXTENSIONS_ENABLED
  migration_order(300) if EASY_EXTENSIONS_ENABLED

  plugin_in_relative_subdirectory(File.join('easyproject', 'easy_plugins')) if EASY_EXTENSIONS_ENABLED
end

ActionDispatch::Reloader.to_prepare do

  require 'easy_google_translator/hooks'

end