# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2019_03_01
  module Models
    #
    # Plan for the resource.
    #
    class Plan

      include MsRestAzure2

      # @return [String] The plan ID.
      attr_accessor :name

      # @return [String] The publisher ID.
      attr_accessor :publisher

      # @return [String] The offer ID.
      attr_accessor :product

      # @return [String] The promotion code.
      attr_accessor :promotion_code

      # @return [String] The plan's version.
      attr_accessor :version


      #
      # Mapper for Plan class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Plan',
          type: {
            name: 'Composite',
            class_name: 'Plan',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              product: {
                client_side_validation: true,
                required: false,
                serialized_name: 'product',
                type: {
                  name: 'String'
                }
              },
              promotion_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'promotionCode',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
