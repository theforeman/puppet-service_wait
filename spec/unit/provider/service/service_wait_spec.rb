require 'spec_helper'

describe Puppet::Type.type(:service).provider(:service_wait) do
  describe 'commands' do
    it { expect(described_class).to respond_to :systemctl }
    it { expect(File.basename(described_class.command(:systemctl))).to eq('service-wait') }
  end
end
