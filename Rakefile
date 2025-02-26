# typed: true
# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'minitest/test_task'
require 'rubocop/rake_task'

RuboCop::RakeTask.new

Minitest::TestTask.create

task :default => :test


# Developers can run all tests with:
#
# $ rake test
#
# Developers can run individual test files with:
#
# $ rake test test/parameter_test
#
# and run individual tests by adding `focus` to the line before the test definition.