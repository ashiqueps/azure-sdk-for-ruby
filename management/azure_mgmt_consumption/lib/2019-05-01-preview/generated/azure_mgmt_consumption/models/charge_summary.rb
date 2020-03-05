# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_05_01_preview
  module Models
    #
    # A charge summary resource.
    #
    class ChargeSummary < Resource

      include MsRestAzure

      # @return [String] The id of the billing period resource that the charge
      # belongs to.
      attr_accessor :billing_period_id

      # @return [String] Usage start date.
      attr_accessor :usage_start

      # @return [String]  Usage end date.
      attr_accessor :usage_end

      # @return Azure Charges.
      attr_accessor :azure_charges

      # @return Charges Billed separately.
      attr_accessor :charges_billed_separately

      # @return Marketplace Charges.
      attr_accessor :marketplace_charges

      # @return [String] Currency Code
      attr_accessor :currency


      #
      # Mapper for ChargeSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChargeSummary',
          type: {
            name: 'Composite',
            class_name: 'ChargeSummary',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              billing_period_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingPeriodId',
                type: {
                  name: 'String'
                }
              },
              usage_start: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.usageStart',
                type: {
                  name: 'String'
                }
              },
              usage_end: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.usageEnd',
                type: {
                  name: 'String'
                }
              },
              azure_charges: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.azureCharges',
                type: {
                  name: 'Number'
                }
              },
              charges_billed_separately: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.chargesBilledSeparately',
                type: {
                  name: 'Number'
                }
              },
              marketplace_charges: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.marketplaceCharges',
                type: {
                  name: 'Number'
                }
              },
              currency: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.currency',
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