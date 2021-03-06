require 'spec_helper'

describe 'workstation_bootstrap::firewall_post' do
  let(:facts) {{
    :osfamily               => 'RedHat',
    :kernel                 => 'Linux',
    :productname            => 'Unknown',
    :operatingsystem        => 'CentOS',
    :operatingsystemrelease => '7.2',
    :selinux                => 'false',
  }}

  it { should compile.with_all_deps }

  it { should contain_firewall('999 drop all').with({
    'proto'   => 'all',
    'action'  => 'drop',
    'before'  => nil,
    })
  }
end # describe 'workstation_bootstrap::firewall_post'
