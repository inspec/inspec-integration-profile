# encoding: utf-8

control 'test audit attribute override' do
  describe attribute('audit_attribute') do
    it { should eq 'Attribute Override!' }
  end
end

control 'test help command' do
  describe command('help') do
    its('stdout') { should match(%r(.*)) }
  end
end

control 'test tmp directory' do
  impact 0.7
  title 'Create /tmp directory'
  desc 'An optional description...'
  describe file('/tmp') do
    it { should be_directory }
  end
end
