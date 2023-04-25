# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_02_01_preview
  #
  # ContainerLogs
  #
  class ContainerLogs
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ContainerLogs class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ContainerInstanceManagementClient] reference to the ContainerInstanceManagementClient
    attr_reader :client

    #
    # Get the logs for a specified container instance.
    #
    # Get the logs for a specified container instance in a specified resource group
    # and container group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param container_group_name [String] The name of the container group.
    # @param container_name [String] The name of the container instance.
    # @param tail [Integer] The number of lines to show from the tail of the
    # container instance log. If not provided, all available logs are shown up to
    # 4mb.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Logs] operation results.
    #
    def list(resource_group_name, container_group_name, container_name, tail:nil, custom_headers:nil)
      response = list_async(resource_group_name, container_group_name, container_name, tail:tail, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the logs for a specified container instance.
    #
    # Get the logs for a specified container instance in a specified resource group
    # and container group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param container_group_name [String] The name of the container group.
    # @param container_name [String] The name of the container instance.
    # @param tail [Integer] The number of lines to show from the tail of the
    # container instance log. If not provided, all available logs are shown up to
    # 4mb.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, container_group_name, container_name, tail:nil, custom_headers:nil)
      list_async(resource_group_name, container_group_name, container_name, tail:tail, custom_headers:custom_headers).value!
    end

    #
    # Get the logs for a specified container instance.
    #
    # Get the logs for a specified container instance in a specified resource group
    # and container group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param container_group_name [String] The name of the container group.
    # @param container_name [String] The name of the container instance.
    # @param tail [Integer] The number of lines to show from the tail of the
    # container instance log. If not provided, all available logs are shown up to
    # 4mb.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, container_group_name, container_name, tail:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'container_group_name is nil' if container_group_name.nil?
      fail ArgumentError, 'container_name is nil' if container_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerInstance/containerGroups/{containerGroupName}/containers/{containerName}/logs'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'containerGroupName' => container_group_name,'containerName' => container_name},
          query_params: {'api-version' => @client.api_version,'tail' => tail},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Logs.mapper()
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
