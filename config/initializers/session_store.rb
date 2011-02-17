# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_poopsquare_session',
  :secret      => '50b291b0dd5920ffadc6834b12cb86a59c616d02d94cae12b206790122021b3eee36ef7d3d6202b62c05cee905e0dbaf068413d730be1275faf076202cabbad3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
