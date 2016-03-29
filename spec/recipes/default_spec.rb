# Encoding: UTF-8

require_relative '../spec_helper'

describe 'socrata-sensu-server::default' do
  let(:platform) { { platform: 'ubuntu', version: '14.04' } }
  let(:runner) { ChefSpec::SoloRunner.new(platform) }
  let(:chef_run) { runner.converge(described_recipe) }

  it 'installs Runit' do
    expect(chef_run).to include_recipe('runit')
  end

  it 'installs Sensu' do
    expect(chef_run).to include_recipe('sensu')
  end

  it 'configures Sensu to use Runit' do
    expect(chef_run.node['sensu']['init_style']).to eq('runit')
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
