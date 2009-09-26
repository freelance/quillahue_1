# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_quillahue_session',
  :secret      => 'c2b973fc4ebbe5219b93c27b06790ea02e0cc27e9d271afdb16c89778feb0a35e8fffb4d3005567c863944d8b4922749d4c4222f2e0d616ffbaf165ca9172663'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
