# Encoding: UTF-8

require_relative '../spec_helper'

describe 'socrata-sensu-server::default' do
  let(:platform) { { platform: 'ubuntu', version: '14.04' } }
  let(:runner) do
    ChefSpec::SoloRunner.new(platform) do |node|
      env = Chef::Environment.new
      env.name 'devtest'
      allow(node).to receive(:chef_environment).and_return(env.name)
      allow(Chef::Environment).to receive(:load).and_return(env)
    end
  end
  let(:chef_run) { runner.converge(described_recipe) }

  it 'installs Sensu' do
    expect(chef_run).to include_recipe('sensu')
  end

  it 'configures Sensu to use Runit' do
    expect(chef_run.node['sensu']['init_style']).to eq('runit')
  end

  it 'configures Sensu to use the local environment Redis instance' do
    expected = 'redis.sensu.devtest.socrata.net'
    expect(chef_run.node['sensu']['redis']['host']).to eq(expected)
  end

  it 'starts sensu-server' do
    expect(chef_run).to include_recipe('sensu::server_service')
  end

  it 'starts sensu-api' do
    expect(chef_run).to include_recipe('sensu::api_service')
  end

  it 'installs Uchiwa' do
    expect(chef_run).to include_recipe('uchiwa')
  end
end
