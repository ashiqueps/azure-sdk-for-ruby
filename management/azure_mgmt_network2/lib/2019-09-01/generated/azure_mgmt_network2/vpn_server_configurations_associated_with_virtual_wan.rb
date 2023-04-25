# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_09_01
  #
  # VpnServerConfigurationsAssociatedWithVirtualWan
  #
  class VpnServerConfigurationsAssociatedWithVirtualWan
    include MsRestAzure2

    #
    # Creates and initializes a new instance of the VpnServerConfigurationsAssociatedWithVirtualWan class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # Gives the list of VpnServerConfigurations associated with Virtual Wan in a
    # resource group.
    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN whose associated
    # VpnServerConfigurations is needed.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VpnServerConfigurationsResponse] operation results.
    #
    def list(resource_group_name, virtual_wanname, custom_headers:nil)
      response = list_async(resource_group_name, virtual_wanname, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN whose associated
    # VpnServerConfigurations is needed.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def list_async(resource_group_name, virtual_wanname, custom_headers:nil)
      # Send request
      promise = begin_list_async(resource_group_name, virtual_wanname, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Network2::Mgmt::V2019_09_01::Models::VpnServerConfigurationsResponse.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method, FinalStateVia::LOCATION)
      end

      promise
    end

    #
    # Gives the list of VpnServerConfigurations associated with Virtual Wan in a
    # resource group.
    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN whose associated
    # VpnServerConfigurations is needed.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VpnServerConfigurationsResponse] operation results.
    #
    def begin_list(resource_group_name, virtual_wanname, custom_headers:nil)
      response = begin_list_async(resource_group_name, virtual_wanname, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gives the list of VpnServerConfigurations associated with Virtual Wan in a
    # resource group.
    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN whose associated
    # VpnServerConfigurations is needed.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure2::AzureOperationResponse] HTTP response information.
    #
    def begin_list_with_http_info(resource_group_name, virtual_wanname, custom_headers:nil)
      begin_list_async(resource_group_name, virtual_wanname, custom_headers:custom_headers).value!
    end

    #
    # Gives the list of VpnServerConfigurations associated with Virtual Wan in a
    # resource group.
    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN whose associated
    # VpnServerConfigurations is needed.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_list_async(resource_group_name, virtual_wanname, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'virtual_wanname is nil' if virtual_wanname.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualWans/{virtualWANName}/vpnServerConfigurations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'virtualWANName' => virtual_wanname},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure2::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network2::Mgmt::V2019_09_01::Models::VpnServerConfigurationsResponse.mapper()
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
