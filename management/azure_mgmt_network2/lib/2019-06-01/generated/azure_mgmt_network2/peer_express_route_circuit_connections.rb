# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_06_01
  #
  # PeerExpressRouteCircuitConnections
  #
  class PeerExpressRouteCircuitConnections
    include MsRestAzure2

    #
    # Creates and initializes a new instance of the PeerExpressRouteCircuitConnections class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # Gets the specified Peer Express Route Circuit Connection from the specified
    # express route circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param connection_name [String] The name of the peer express route circuit
    # connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PeerExpressRouteCircuitConnection] operation results.
    #
    def get(resource_group_name, circuit_name, peering_name, connection_name, custom_headers:nil)
      response = get_async(resource_group_name, circuit_name, peering_name, connection_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the specified Peer Express Route Circuit Connection from the specified
    # express route circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param connection_name [String] The name of the peer express route circuit
    # connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure2::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, circuit_name, peering_name, connection_name, custom_headers:nil)
      get_async(resource_group_name, circuit_name, peering_name, connection_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the specified Peer Express Route Circuit Connection from the specified
    # express route circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the express route circuit.
    # @param peering_name [String] The name of the peering.
    # @param connection_name [String] The name of the peer express route circuit
    # connection.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, circuit_name, peering_name, connection_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'circuit_name is nil' if circuit_name.nil?
      fail ArgumentError, 'peering_name is nil' if peering_name.nil?
      fail ArgumentError, 'connection_name is nil' if connection_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteCircuits/{circuitName}/peerings/{peeringName}/peerConnections/{connectionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'circuitName' => circuit_name,'peeringName' => peering_name,'connectionName' => connection_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Network2::Mgmt::V2019_06_01::Models::PeerExpressRouteCircuitConnection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all global reach peer connections associated with a private peering in
    # an express route circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the circuit.
    # @param peering_name [String] The name of the peering.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<PeerExpressRouteCircuitConnection>] operation results.
    #
    def list(resource_group_name, circuit_name, peering_name, custom_headers:nil)
      first_page = list_as_lazy(resource_group_name, circuit_name, peering_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all global reach peer connections associated with a private peering in
    # an express route circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the circuit.
    # @param peering_name [String] The name of the peering.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure2::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, circuit_name, peering_name, custom_headers:nil)
      list_async(resource_group_name, circuit_name, peering_name, custom_headers:custom_headers).value!
    end

    #
    # Gets all global reach peer connections associated with a private peering in
    # an express route circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the circuit.
    # @param peering_name [String] The name of the peering.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, circuit_name, peering_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'circuit_name is nil' if circuit_name.nil?
      fail ArgumentError, 'peering_name is nil' if peering_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteCircuits/{circuitName}/peerings/{peeringName}/peerConnections'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'circuitName' => circuit_name,'peeringName' => peering_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Network2::Mgmt::V2019_06_01::Models::PeerExpressRouteCircuitConnectionListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all global reach peer connections associated with a private peering in
    # an express route circuit.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PeerExpressRouteCircuitConnectionListResult] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all global reach peer connections associated with a private peering in
    # an express route circuit.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure2::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets all global reach peer connections associated with a private peering in
    # an express route circuit.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
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
            result_mapper = Azure::Network2::Mgmt::V2019_06_01::Models::PeerExpressRouteCircuitConnectionListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all global reach peer connections associated with a private peering in
    # an express route circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param circuit_name [String] The name of the circuit.
    # @param peering_name [String] The name of the peering.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PeerExpressRouteCircuitConnectionListResult] which provide lazy
    # access to pages of the response.
    #
    def list_as_lazy(resource_group_name, circuit_name, peering_name, custom_headers:nil)
      response = list_async(resource_group_name, circuit_name, peering_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
