require '/tmp/kitchen/spec/spec_helper.rb'

# https://serverspec.org/resource_types.html

describe package( 'git' ) do
    it { should be_installed }
end

describe port( 4200 ) do
    it { should be_listening }
end