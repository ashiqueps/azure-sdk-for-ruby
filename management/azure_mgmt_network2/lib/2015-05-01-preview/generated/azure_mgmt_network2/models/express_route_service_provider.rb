# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2015_05_01_preview
  module Models
    #
    # ExpressRouteResourceProvider object
    #
    class ExpressRouteServiceProvider

      include MsRestAzure2

      # @return [String] Gets or sets the ID of the resource.
      attr_accessor :id

      # @return [String] Gets or sets the name of the resource.
      attr_accessor :name

      # @return [String] Gets or sets the type of the resource.
      attr_accessor :type

      # @return [ExpressRouteServiceProviderPropertiesFormat]
      attr_accessor :properties


      #
      # Mapper for ExpressRouteServiceProvider class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteServiceProvider',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteServiceProvider',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteServiceProviderPropertiesFormat'
                }
              }
            }
          }
        }
      end
    end
  end
end