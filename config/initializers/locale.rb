I18n.load_path += Dir[Rails.root.join('config', 'initializers', 'locales', '*.yml')]
#↑これです
I18n.available_locales = :ja
I18n.default_locale = :ja
