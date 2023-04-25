# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  #
  # Service Fabric REST Client APIs allows management of Service Fabric
  # clusters, applications and services.
  #
  class MeshCodePackage
    include MsRestAzure

    #
    # Creates and initializes a new instance of the MeshCodePackage class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ServiceFabricClientAPIs] reference to the ServiceFabricClientAPIs
    attr_reader :client

    #
    # Gets the logs from the container.
    #
    # Gets the logs for the container of the specified code package of the service
    # replica.
    #
    # @param application_resource_name [String] The identity of the application.
    # @param service_resource_name [String] The identity of the service.
    # @param replica_name [String] Service Fabric replica name.
    # @param code_package_name [String] The name of code package of the service.
    # @param tail [String] Number of lines to show from the end of the logs.
    # Default is 100. 'all' to show the complete logs.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ContainerLogs] operation results.
    #
    def get_container_logs(application_resource_name, service_resource_name, replica_name, code_package_name, tail:nil, custom_headers:nil)
      response = get_container_logs_async(application_resource_name, service_resource_name, replica_name, code_package_name, tail:tail, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the logs from the container.
    #
    # Gets the logs for the container of the specified code package of the service
    # replica.
    #
    # @param application_resource_name [String] The identity of the application.
    # @param service_resource_name [String] The identity of the service.
    # @param replica_name [String] Service Fabric replica name.
    # @param code_package_name [String] The name of code package of the service.
    # @param tail [String] Number of lines to show from the end of the logs.
    # Default is 100. 'all' to show the complete logs.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_container_logs_with_http_info(application_resource_name, service_resource_name, replica_name, code_package_name, tail:nil, custom_headers:nil)
      get_container_logs_async(application_resource_name, service_resource_name, replica_name, code_package_name, tail:tail, custom_headers:custom_headers).value!
    end

    #
    # Gets the logs from the container.
    #
    # Gets the logs for the container of the specified code package of the service
    # replica.
    #
    # @param application_resource_name [String] The identity of the application.
    # @param service_resource_name [String] The identity of the service.
    # @param replica_name [String] Service Fabric replica name.
    # @param code_package_name [String] The name of code package of the service.
    # @param tail [String] Number of lines to show from the end of the logs.
    # Default is 100. 'all' to show the complete logs.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_container_logs_async(application_resource_name, service_resource_name, replica_name, code_package_name, tail:nil, custom_headers:nil)
      api_version = '6.4-preview'
      fail ArgumentError, 'application_resource_name is nil' if application_resource_name.nil?
      fail ArgumentError, 'service_resource_name is nil' if service_resource_name.nil?
      fail ArgumentError, 'replica_name is nil' if replica_name.nil?
      fail ArgumentError, 'code_package_name is nil' if code_package_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Resources/Applications/{applicationResourceName}/Services/{serviceResourceName}/Replicas/{replicaName}/CodePackages/{codePackageName}/Logs'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'codePackageName' => code_package_name},
          skip_encoding_path_params: {'applicationResourceName' => application_resource_name,'serviceResourceName' => service_resource_name,'replicaName' => replica_name},
          query_params: {'api-version' => api_version,'Tail' => tail},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V7_0_0_42::Models::ContainerLogs.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
