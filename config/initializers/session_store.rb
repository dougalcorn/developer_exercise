# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mcp_session',
  :secret      => '7bdff37cb863ffda4bdc22aad813c3910d361aeaa836bbfbcf95fd5a272a0b863118879621de73f2d8bb79cd9c495ed6ae891f910af5274e12950a9755f458e9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
