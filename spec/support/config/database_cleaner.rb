RSpec.configure do |config|
  # transactional cleaning to work with selenium
  config.before :suite do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with :truncation
  end

  # clean databases
  config.before do
    DatabaseCleaner.start
  end

  # more cleaning
  config.after do
    DatabaseCleaner.clean
  end
end