require 'minitest/autorun'
require 'mocha/setup'

$:.unshift File.dirname(__FILE__) + '../lib'
require 'digger'

$:.unshift File.dirname(__FILE__) + '/lib'
require 'digger/test_case'
require 'digger/test_socket'
