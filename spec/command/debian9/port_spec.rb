require 'spec_helper'

property[:os] = nil
set :os, :family => 'debian', :release => '9'

describe get_command(:check_port_is_listening, '80') do
  it { should eq 'ss -tunl | grep -E -- :80\ ' }
end

