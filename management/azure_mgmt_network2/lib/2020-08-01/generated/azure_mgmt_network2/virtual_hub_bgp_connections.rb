# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_08_01
  #
  # VirtualHubBgpConnections
  #
  class VirtualHubBgpConnections
    include MsRestAzure2

    #
    # Creates and initializes a new instance of the VirtualHubBgpConnections class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # Retrieves the details of all VirtualHubBgpConnections.
    #
    # @param resource_group_name [String] The resource group name of the
    # VirtualHub.
    # @param virtual_hub_name [String] The name of the VirtualHub.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<BgpConnection>] operation results.
    #
    def list(resource_group_name, virtual_hub_name, custom_headers:nil)
      first_page = list_as_lazy(resource_group_name, virtual_hub_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Retrieves the details of all VirtualHubBgpConnections.
    #
    # @param resource_group_name [String] The resource group name of the
    # VirtualHub.
    # @param virtual_hub_name [String] The name of the VirtualHub.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure2::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, virtual_hub_name, custom_headers:nil)
      list_async(resource_group_name, virtual_hub_name, custom_headers:custom_headers).value!
    end

    #
    # Retrieves the details of all VirtualHubBgpConnections.
    #
    # @param resource_group_name [String] The resource group name of the
    # VirtualHub.
    # @param virtual_hub_name [String] The name of the VirtualHub.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, virtual_hub_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'virtual_hub_name is nil' if virtual_hub_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualHubs/{virtualHubName}/bgpConnections'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'virtualHubName' => virtual_hub_name},
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
            result_mapper = Azure::Network2::Mgmt::V2020_08_01::Models::ListVirtualHubBgpConnectionResults.mapper()
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
    # Retrieves a list of routes the virtual hub bgp connection has learned.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the virtual hub.
    # @param connection_name [String] The name of the virtual hub bgp connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PeerRouteList] operation results.
    #
    def list_learned_routes(resource_group_name, hub_name, connection_name, custom_headers:nil)
      response = list_learned_routes_async(resource_group_name, hub_name, connection_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the virtual hub.
    # @param connection_name [String] The name of the virtual hub bgp connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def list_learned_routes_async(resource_group_name, hub_name, connection_name, custom_headers:nil)
      # Send request
      promise = begin_list_learned_routes_async(resource_group_name, hub_name, connection_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Network2::Mgmt::V2020_08_01::Models::PeerRouteList.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method, FinalStateVia::LOCATION)
      end

      promise
    end

    #
    # Retrieves a list of routes the virtual hub bgp connection is advertising to
    # the specified peer.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the virtual hub.
    # @param connection_name [String] The name of the virtual hub bgp connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PeerRouteList] operation results.
    #
    def list_advertised_routes(resource_group_name, hub_name, connection_name, custom_headers:nil)
      response = list_advertised_routes_async(resource_group_name, hub_name, connection_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the virtual hub.
    # @param connection_name [String] The name of the virtual hub bgp connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def list_advertised_routes_async(resource_group_name, hub_name, connection_name, custom_headers:nil)
      # Send request
      promise = begin_list_advertised_routes_async(resource_group_name, hub_name, connection_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Network2::Mgmt::V2020_08_01::Models::PeerRouteList.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method, FinalStateVia::LOCATION)
      end

      promise
    end

    #
    # Retrieves a list of routes the virtual hub bgp connection has learned.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the virtual hub.
    # @param connection_name [String] The name of the virtual hub bgp connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PeerRouteList] operation results.
    #
    def begin_list_learned_routes(resource_group_name, hub_name, connection_name, custom_headers:nil)
      response = begin_list_learned_routes_async(resource_group_name, hub_name, connection_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves a list of routes the virtual hub bgp connection has learned.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the virtual hub.
    # @param connection_name [String] The name of the virtual hub bgp connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure2::AzureOperationResponse] HTTP response information.
    #
    def begin_list_learned_routes_with_http_info(resource_group_name, hub_name, connection_name, custom_headers:nil)
      begin_list_learned_routes_async(resource_group_name, hub_name, connection_name, custom_headers:custom_headers).value!
    end

    #
    # Retrieves a list of routes the virtual hub bgp connection has learned.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the virtual hub.
    # @param connection_name [String] The name of the virtual hub bgp connection.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_list_learned_routes_async(resource_group_name, hub_name, connection_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'hub_name is nil' if hub_name.nil?
      fail ArgumentError, 'connection_name is nil' if connection_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualHubs/{hubName}/bgpConnections/{connectionName}/learnedRoutes'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'hubName' => hub_name,'connectionName' => connection_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Network2::Mgmt::V2020_08_01::Models::PeerRouteList.mapper()
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
    # Retrieves a list of routes the virtual hub bgp connection is advertising to
    # the specified peer.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the virtual hub.
    # @param connection_name [String] The name of the virtual hub bgp connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PeerRouteList] operation results.
    #
    def begin_list_advertised_routes(resource_group_name, hub_name, connection_name, custom_headers:nil)
      response = begin_list_advertised_routes_async(resource_group_name, hub_name, connection_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves a list of routes the virtual hub bgp connection is advertising to
    # the specified peer.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the virtual hub.
    # @param connection_name [String] The name of the virtual hub bgp connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure2::AzureOperationResponse] HTTP response information.
    #
    def begin_list_advertised_routes_with_http_info(resource_group_name, hub_name, connection_name, custom_headers:nil)
      begin_list_advertised_routes_async(resource_group_name, hub_name, connection_name, custom_headers:custom_headers).value!
    end

    #
    # Retrieves a list of routes the virtual hub bgp connection is advertising to
    # the specified peer.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the virtual hub.
    # @param connection_name [String] The name of the virtual hub bgp connection.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_list_advertised_routes_async(resource_group_name, hub_name, connection_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'hub_name is nil' if hub_name.nil?
      fail ArgumentError, 'connection_name is nil' if connection_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualHubs/{hubName}/bgpConnections/{connectionName}/advertisedRoutes'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'hubName' => hub_name,'connectionName' => connection_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Network2::Mgmt::V2020_08_01::Models::PeerRouteList.mapper()
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
    # Retrieves the details of all VirtualHubBgpConnections.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ListVirtualHubBgpConnectionResults] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves the details of all VirtualHubBgpConnections.
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
    # Retrieves the details of all VirtualHubBgpConnections.
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
            result_mapper = Azure::Network2::Mgmt::V2020_08_01::Models::ListVirtualHubBgpConnectionResults.mapper()
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
    # Retrieves the details of all VirtualHubBgpConnections.
    #
    # @param resource_group_name [String] The resource group name of the
    # VirtualHub.
    # @param virtual_hub_name [String] The name of the VirtualHub.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ListVirtualHubBgpConnectionResults] which provide lazy access to
    # pages of the response.
    #
    def list_as_lazy(resource_group_name, virtual_hub_name, custom_headers:nil)
      response = list_async(resource_group_name, virtual_hub_name, custom_headers:custom_headers).value!
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
