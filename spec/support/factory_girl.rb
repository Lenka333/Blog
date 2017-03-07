# my note, this is done as per: http://www.rubydoc.info/gems/factory_girl/file/GETTING_STARTED.md

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

# RSpec without Rails
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    FactoryGirl.find_definitions
  end
end