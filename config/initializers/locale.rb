<<<<<<< HEAD
# Where the I18n library should search for translation files
# I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]

# config/initializers/locale.rb

=======
# config/initializers/locale.rb

# Where the I18n library should search for translation files
# I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]

>>>>>>> e69b62d7def611ef52a17b19aabdb1dbd83ff011
# Permitted locales available for the application
I18n.available_locales = [:en, 'pt-BR']

# Set default locale to something other than :en
<<<<<<< HEAD
I18n.default_locale = :en
=======
I18n.default_locale = 'pt-BR'
>>>>>>> e69b62d7def611ef52a17b19aabdb1dbd83ff011
