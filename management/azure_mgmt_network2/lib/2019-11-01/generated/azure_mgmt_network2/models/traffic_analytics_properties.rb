# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_11_01
  module Models
    #
    # Parameters that define the configuration of traffic analytics.
    #
    class TrafficAnalyticsProperties

      include MsRestAzure2

      # @return [TrafficAnalyticsConfigurationProperties] Parameters that
      # define the configuration of traffic analytics.
      attr_accessor :network_watcher_flow_analytics_configuration


      #
      # Mapper for TrafficAnalyticsProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TrafficAnalyticsProperties',
          type: {
            name: 'Composite',
            class_name: 'TrafficAnalyticsProperties',
            model_properties: {
              network_watcher_flow_analytics_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkWatcherFlowAnalyticsConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'TrafficAnalyticsConfigurationProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
