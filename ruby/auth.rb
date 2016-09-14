require "keychain"
require 'io/console'

class Auth
  attr_accessor :server

  def initialize(server)
    self.server = server
  end

  def find_or_create
    return login if login
    save_to_keychain(collect_username, collect_password)
    login
  end

  private

  def collect_username
    print 'Username: '
    STDIN.gets.chomp.tap { |_| print "\n" }
  end

  def collect_password
    print 'Password: '
    STDIN.noecho(&:gets).chomp.tap { |_| print "\n" }
  end

  def login
    matches.first
  end

  def matches
    Keychain.internet_passwords.where(server: server)
  end

  def save_to_keychain(username, password)
    Keychain.internet_passwords.create server: server,
                                       protocol: Keychain::Protocols::HTTP,
                                       password: password,
                                       account: username
  end
end

