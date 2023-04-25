# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_03_01
  #
  # ServiceAssociationLinks
  #
  class ServiceAssociationLinks
    include MsRestAzure2

    #
    # Creates and initializes a new instance of the ServiceAssociationLinks class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # Gets a list of service association links for a subnet.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param virtual_network_name [String] The name of the virtual network.
    # @param subnet_name [String] The name of the subnet.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceAssociationLinksListResult] operation results.
    #
    def list(resource_group_name, virtual_network_name, subnet_name, custom_headers:nil)
      response = list_async(resource_group_name, virtual_network_name, subnet_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of service association links for a subnet.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param virtual_network_name [String] The name of the virtual network.
    # @param subnet_name [String] The name of the subnet.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure2::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, virtual_network_name, subnet_name, custom_headers:nil)
      list_async(resource_group_name, virtual_network_name, subnet_name, custom_headers:custom_headers).value!
    end

    #
    # Gets a list of service association links for a subnet.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param virtual_network_name [String] The name of the virtual network.
    # @param subnet_name [String] The name of the subnet.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, virtual_network_name, subnet_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'virtual_network_name is nil' if virtual_network_name.nil?
      fail ArgumentError, 'subnet_name is nil' if subnet_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}/ServiceAssociationLinks'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'virtualNetworkName' => virtual_network_name,'subnetName' => subnet_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
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
          fail MsRestAzure2::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network2::Mgmt::V2020_03_01::Models::ServiceAssociationLinksListResult.mapper()
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
