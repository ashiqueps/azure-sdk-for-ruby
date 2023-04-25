# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_08_01
  module Models
    #
    # The Office365 breakout policy.
    #
    class O365PolicyProperties

      include MsRestAzure2

      # @return [O365BreakOutCategoryPolicies] Office365 breakout categories.
      attr_accessor :break_out_categories


      #
      # Mapper for O365PolicyProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'O365PolicyProperties',
          type: {
            name: 'Composite',
            class_name: 'O365PolicyProperties',
            model_properties: {
              break_out_categories: {
                client_side_validation: true,
                required: false,
                serialized_name: 'breakOutCategories',
                type: {
                  name: 'Composite',
                  class_name: 'O365BreakOutCategoryPolicies'
                }
              }
            }
          }
        }
      end
    end
  end
end
