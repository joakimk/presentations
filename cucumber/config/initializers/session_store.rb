# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_example_session',
  :secret      => '041b3615956c2b54b5570eb627652c0fcd62f5f4ee4c368705861a05b0380a5c9d35da0be0cb66c932a4087984418af3576a76a28ae0f1f435e57a68c96fe87e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
