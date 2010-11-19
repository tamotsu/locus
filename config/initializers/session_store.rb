# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_locus_session',
  :secret      => 'c5fba0c845c1b7472797c7865f9c94f204e133b251d3ec00bb9e94add082f4e6c7ef7ca586e2e2881b326a9e12ad304007486c2b876b868807167b03c273617a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
