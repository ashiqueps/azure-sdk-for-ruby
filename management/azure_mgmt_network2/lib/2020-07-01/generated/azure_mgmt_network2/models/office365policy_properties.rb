# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Network Virtual Appliance Sku Properties.
    #
    class Office365PolicyProperties

      include MsRestAzure2

      # @return [BreakOutCategoryPolicies] Office 365 breakout categories.
      attr_accessor :break_out_categories


      #
      # Mapper for Office365PolicyProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Office365PolicyProperties',
          type: {
            name: 'Composite',
            class_name: 'Office365PolicyProperties',
            model_properties: {
              break_out_categories: {
                client_side_validation: true,
                required: false,
                serialized_name: 'breakOutCategories',
                type: {
                  name: 'Composite',
                  class_name: 'BreakOutCategoryPolicies'
                }
              }
            }
          }
        }
      end
    end
  end
end
