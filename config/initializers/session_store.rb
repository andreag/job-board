# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_healthjob_session',
  :secret      => '8a3ca79b99adb4d8e2d930bfb08ed4b7d7111051e259c6835ddfd24ffbe7408a276fda78998d6bbf44afec969794986dfba25d4b61b8d48695d20d3bbb863fb1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
