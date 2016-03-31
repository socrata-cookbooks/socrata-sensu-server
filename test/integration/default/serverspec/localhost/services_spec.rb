# Encoding: UTF-8

require_relative '../spec_helper'

describe 'socrata-sensu-server::default::services' do
  describe service('consul') do
    it 'is enabled' do
      expect(subject).to be_enabled
    end

    it 'is running' do
      expect(subject).to be_running
    end
  end

  describe service('consul-template') do
    it 'is enabled' do
      expect(subject).to be_enabled.under(:runit)
    end

    it 'is running' do
      expect(subject).to be_running.under(:runit)
    end
  end

  describe command('/opt/sensu/bin/sensu-ctl status') do
    it 'indicates all configured services are running' do
      expect(subject.exit_status).to eq(0)
    end

    it 'indicates sensu-server is enabled' do
      expect(subject.stdout).to match(/^run: sensu-server: \(pid/)
    end

    it 'indicates sensu-api is enabled' do
      expect(subject.stdout).to match(/^run: sensu-api: \(pid/)
    end
  end

  describe service('uchiwa') do
    it 'is enabled' do
      expect(subject).to be_enabled
    end

    it 'is running' do
      expect(subject).to be_running
    end
  end
end
