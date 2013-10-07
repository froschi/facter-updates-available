require 'facter'

path = '/usr/lib/update-notifier/apt-check'

if File.exist?(path) then
  # apt-check writes to stderr
  packages = %x/#{path} -p 2>&1/.lines.to_a.map! {|line| line.chomp}.join(',')
  p_normal, p_security = %x/#{path} 2>&1/.split(';')
end

Facter.add(:updates_available_normal) do
  setcode do
    p_normal
  end
end

Facter.add(:updates_available_security) do
  setcode do
    p_security
  end
end

Facter.add(:updates_available_packages) do
  setcode do
    packages
  end
end
