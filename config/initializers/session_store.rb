# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bcms_intensedebate_session',
  :secret      => 'c0039d27bb2304ba073d032131c494ed2ecc8e5d2f5d2dda77ff24fd2461e474effcbe7356d79711dcb0904654dcb620a8ffc1b18ee76da03d8c4da21de9bbf5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
