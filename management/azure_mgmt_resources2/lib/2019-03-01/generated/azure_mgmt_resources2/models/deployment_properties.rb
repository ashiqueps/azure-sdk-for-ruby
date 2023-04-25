# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2019_03_01
  module Models
    #
    # Deployment properties.
    #
    class DeploymentProperties

      include MsRestAzure2

      # @return The template content. You use this element when you want to
      # pass the template syntax directly in the request rather than link to an
      # existing template. It can be a JObject or well-formed JSON string. Use
      # either the templateLink property or the template property, but not
      # both.
      attr_accessor :template

      # @return [TemplateLink] The URI of the template. Use either the
      # templateLink property or the template property, but not both.
      attr_accessor :template_link

      # @return Name and value pairs that define the deployment parameters for
      # the template. You use this element when you want to provide the
      # parameter values directly in the request rather than link to an
      # existing parameter file. Use either the parametersLink property or the
      # parameters property, but not both. It can be a JObject or a well formed
      # JSON string.
      attr_accessor :parameters

      # @return [ParametersLink] The URI of parameters file. You use this
      # element to link to an existing parameters file. Use either the
      # parametersLink property or the parameters property, but not both.
      attr_accessor :parameters_link

      # @return [DeploymentMode] The mode that is used to deploy resources.
      # This value can be either Incremental or Complete. In Incremental mode,
      # resources are deployed without deleting existing resources that are not
      # included in the template. In Complete mode, resources are deployed and
      # existing resources in the resource group that are not included in the
      # template are deleted. Be careful when using Complete mode as you may
      # unintentionally delete resources. Possible values include:
      # 'Incremental', 'Complete'
      attr_accessor :mode

      # @return [DebugSetting] The debug setting of the deployment.
      attr_accessor :debug_setting

      # @return [OnErrorDeployment] The deployment on error behavior.
      attr_accessor :on_error_deployment


      #
      # Mapper for DeploymentProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeploymentProperties',
          type: {
            name: 'Composite',
            class_name: 'DeploymentProperties',
            model_properties: {
              template: {
                client_side_validation: true,
                required: false,
                serialized_name: 'template',
                type: {
                  name: 'Object'
                }
              },
              template_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'templateLink',
                type: {
                  name: 'Composite',
                  class_name: 'TemplateLink'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Object'
                }
              },
              parameters_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parametersLink',
                type: {
                  name: 'Composite',
                  class_name: 'ParametersLink'
                }
              },
              mode: {
                client_side_validation: true,
                required: true,
                serialized_name: 'mode',
                type: {
                  name: 'Enum',
                  module: 'DeploymentMode'
                }
              },
              debug_setting: {
                client_side_validation: true,
                required: false,
                serialized_name: 'debugSetting',
                type: {
                  name: 'Composite',
                  class_name: 'DebugSetting'
                }
              },
              on_error_deployment: {
                client_side_validation: true,
                required: false,
                serialized_name: 'onErrorDeployment',
                type: {
                  name: 'Composite',
                  class_name: 'OnErrorDeployment'
                }
              }
            }
          }
        }
      end
    end
  end
end
