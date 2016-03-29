# Encoding: UTF-8

require_relative '../spec_helper'

describe 'socrata-sensu-server::default::packages' do
  %w(sensu uchiwa).each do |p|
    describe package(p) do
      it 'is installed' do
        expect(subject).to be_installed
      end
    end
  end
end
