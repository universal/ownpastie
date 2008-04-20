# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.0.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.
  # See Rails::Configuration for more options.

  # Skip frameworks you're not going to use (only works if using vendor/rails).
  # To use Rails without a database, you must remove the Active Record framework
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Only load the plugins named here, in the order given. By default, all plugins 
  # in vendor/plugins are loaded in alphabetical order.
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Force all environments to use the same logger level
  # (by default production uses :info, the others :debug)
  # config.log_level = :debug

  # Your secret key for verifying cookie session data integrity.
  # If you change this key, all old sessions will become invalid!
  # Make sure the secret is at least 30 characters and all random, 
  # no regular words or you'll be exposed to dictionary attacks.
  config.action_controller.session = {
    :session_key => '_ownpastie_session',
    :secret      => 'fece3ca9e706f1587c5daaabcebbc8adbddef3cf92f4ef0a2c4cdf8d5407590e66254c9ee6a79a88b7e7da1ae6a233da79399394625b9b46d960d5ab77bf42a8'
  }

  # Use the database for sessions instead of the cookie-based default,
  # which shouldn't be used to store highly confidential information
  # (create the session table with 'rake db:sessions:create')
  # config.action_controller.session_store = :active_record_store

  # Use SQL instead of Active Record's schema dumper when creating the test database.
  # This is necessary if your schema can't be completely dumped by the schema dumper,
  # like if you have constraints or database-specific column types
  # config.active_record.schema_format = :sql

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector

  # Make Active Record use UTC-base instead of local time
  # config.active_record.default_timezone = :utc
  SYNTAXES = %w{actionscript active4d active4d_html active4d_ini active4d_library ada antlr apache applescript asp asp_vb.net bibtex blog_html blog_markdown blog_text blog_textile build bulletin_board c++ c cake camlp4 cm coldfusion context_free cs css css_experimental csv d diff dokuwiki dot doxygen dylan eiffel erlang fxscript f-script fortran greasemonkey gri groovy gtd gtdalt haml haskell html-asp html html_django html_for_asp.net html_mason html_rails html_tcl icalendar inform ini installer_distribution_script io java javaproperties javascript javascript_+_prototype javascript_+_prototype_bracketed jquery_javascript json languagedefinition latex latex_beamer latex_log latex_memoir lexflex lighttpd lilypond lisp literate_haskell logo logtalk lua m macports_portfile mail makefile man markdown mediawiki mel mips modula-3 mod_perl moinmoin mootools movable_type multimarkdown objective-c++ objective-c ocaml ocamllex ocamlyacc opengl pascal perl php plain_text pmwiki postscript processing prolog property_list python python_django qmake_project qt_c++ quake3_config r ragel rd_r_documentation regexp regular_expressions_oniguruma regular_expressions_python release_notes remind restructuredtext rez ruby ruby_experimental ruby_on_rails r_console s5 scheme scilab setext shell-unix-generic slate smarty sql sql_rails ssh-config standard_ml strings_file subversion_commit_message sweave swig tcl template_toolkit tex textile tex_math tsv twiki txt2tags vectorscript xhtml_ xml xml_strict xsl yaml yui_javascript}
end