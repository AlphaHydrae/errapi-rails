require 'rails/generators/base'

module Errapi
  class InstallGenerator < ::Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)

    desc "Creates an errapi initializer and copy locale files to your application."

    def copy_initializer
      template "initializer.rb", "config/initializers/errapi.rb"
    end

    def copy_locale
      copy_file "../../../config/locales/en.yml", "config/locales/errapi.en.yml"
    end

    def show_readme
      readme "README.txt" if behavior == :invoke
    end
  end
end
