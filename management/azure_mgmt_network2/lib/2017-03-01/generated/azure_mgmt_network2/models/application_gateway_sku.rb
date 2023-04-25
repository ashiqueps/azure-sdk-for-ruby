# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2017_03_01
  module Models
    #
    # SKU of an application gateway
    #
    class ApplicationGatewaySku

      include MsRestAzure2

      # @return [ApplicationGatewaySkuName] Name of an application gateway SKU.
      # Possible values include: 'Standard_Small', 'Standard_Medium',
      # 'Standard_Large', 'WAF_Medium', 'WAF_Large'
      attr_accessor :name

      # @return [ApplicationGatewayTier] Tier of an application gateway.
      # Possible values include: 'Standard', 'WAF'
      attr_accessor :tier

      # @return [Integer] Capacity (instance count) of an application gateway.
      attr_accessor :capacity


      #
      # Mapper for ApplicationGatewaySku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewaySku',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewaySku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capacity',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
