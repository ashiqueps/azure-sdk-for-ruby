# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_04_01
  module Models
    #
    # List of available countries with details.
    #
    class AvailableProvidersList

      include MsRestAzure2

      # @return [Array<AvailableProvidersListCountry>] List of available
      # countries.
      attr_accessor :countries


      #
      # Mapper for AvailableProvidersList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailableProvidersList',
          type: {
            name: 'Composite',
            class_name: 'AvailableProvidersList',
            model_properties: {
              countries: {
                client_side_validation: true,
                required: true,
                serialized_name: 'countries',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AvailableProvidersListCountryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AvailableProvidersListCountry'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end