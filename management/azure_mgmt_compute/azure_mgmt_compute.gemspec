# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require '2017-03-30/generated/azure_mgmt_compute/module_definition'
require '2017-03-30/generated/azure_mgmt_compute/version'

Gem::Specification.new do |spec|
  spec.name          = 'azure_mgmt_compute'
  spec.version       = Azure::ARM::Compute::Api_2017_03_30::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'azrubyteam@microsoft.com'
  spec.description   = 'Microsoft Azure Compute Management Client Library for Ruby'
  spec.summary       = 'Official Ruby client library to consume Microsoft Azure Compute Management services.'
  spec.homepage      = 'https://aka.ms/azure-sdk-for-ruby'
  spec.license       = 'MIT'

  spec.files         = Dir["README.md", "LICENSE.txt", "lib/**/*"]
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'dotenv', '~> 2'

  spec.add_runtime_dependency 'ms_rest_azure', '~> 0.8.0'
end
