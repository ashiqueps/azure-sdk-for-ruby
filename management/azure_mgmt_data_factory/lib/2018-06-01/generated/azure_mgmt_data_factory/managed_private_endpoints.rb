# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  #
  # The Azure Data Factory V2 management API provides a RESTful set of web
  # services that interact with Azure Data Factory V2 services.
  #
  class ManagedPrivateEndpoints
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ManagedPrivateEndpoints class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DataFactoryManagementClient] reference to the DataFactoryManagementClient
    attr_reader :client

    #
    # Lists managed private endpoints.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ManagedPrivateEndpointResource>] operation results.
    #
    def list_by_factory(resource_group_name, factory_name, managed_virtual_network_name, custom_headers:nil)
      first_page = list_by_factory_as_lazy(resource_group_name, factory_name, managed_virtual_network_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists managed private endpoints.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_factory_with_http_info(resource_group_name, factory_name, managed_virtual_network_name, custom_headers:nil)
      list_by_factory_async(resource_group_name, factory_name, managed_virtual_network_name, custom_headers:custom_headers).value!
    end

    #
    # Lists managed private endpoints.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_factory_async(resource_group_name, factory_name, managed_virtual_network_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'factory_name is nil' if factory_name.nil?
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MaxLength': '63'" if !factory_name.nil? && factory_name.length > 63
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MinLength': '3'" if !factory_name.nil? && factory_name.length < 3
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$'" if !factory_name.nil? && factory_name.match(Regexp.new('^^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$$')).nil?
      fail ArgumentError, 'managed_virtual_network_name is nil' if managed_virtual_network_name.nil?
      fail ArgumentError, "'managed_virtual_network_name' should satisfy the constraint - 'MaxLength': '127'" if !managed_virtual_network_name.nil? && managed_virtual_network_name.length > 127
      fail ArgumentError, "'managed_virtual_network_name' should satisfy the constraint - 'MinLength': '1'" if !managed_virtual_network_name.nil? && managed_virtual_network_name.length < 1
      fail ArgumentError, "'managed_virtual_network_name' should satisfy the constraint - 'Pattern': '^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$'" if !managed_virtual_network_name.nil? && managed_virtual_network_name.match(Regexp.new('^^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/managedVirtualNetworks/{managedVirtualNetworkName}/managedPrivateEndpoints'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'factoryName' => factory_name,'managedVirtualNetworkName' => managed_virtual_network_name},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedPrivateEndpointListResponse.mapper()
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
    # Creates or updates a managed private endpoint.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param managed_private_endpoint_name [String] Managed private endpoint name
    # @param managed_private_endpoint [ManagedPrivateEndpointResource] Managed
    # private endpoint resource definition.
    # @param if_match [String] ETag of the managed private endpoint entity. Should
    # only be specified for update, for which it should match existing entity or
    # can be * for unconditional update.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagedPrivateEndpointResource] operation results.
    #
    def create_or_update(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, managed_private_endpoint, if_match:nil, custom_headers:nil)
      response = create_or_update_async(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, managed_private_endpoint, if_match:if_match, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a managed private endpoint.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param managed_private_endpoint_name [String] Managed private endpoint name
    # @param managed_private_endpoint [ManagedPrivateEndpointResource] Managed
    # private endpoint resource definition.
    # @param if_match [String] ETag of the managed private endpoint entity. Should
    # only be specified for update, for which it should match existing entity or
    # can be * for unconditional update.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, managed_private_endpoint, if_match:nil, custom_headers:nil)
      create_or_update_async(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, managed_private_endpoint, if_match:if_match, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates a managed private endpoint.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param managed_private_endpoint_name [String] Managed private endpoint name
    # @param managed_private_endpoint [ManagedPrivateEndpointResource] Managed
    # private endpoint resource definition.
    # @param if_match [String] ETag of the managed private endpoint entity. Should
    # only be specified for update, for which it should match existing entity or
    # can be * for unconditional update.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, managed_private_endpoint, if_match:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'factory_name is nil' if factory_name.nil?
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MaxLength': '63'" if !factory_name.nil? && factory_name.length > 63
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MinLength': '3'" if !factory_name.nil? && factory_name.length < 3
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$'" if !factory_name.nil? && factory_name.match(Regexp.new('^^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$$')).nil?
      fail ArgumentError, 'managed_virtual_network_name is nil' if managed_virtual_network_name.nil?
      fail ArgumentError, "'managed_virtual_network_name' should satisfy the constraint - 'MaxLength': '127'" if !managed_virtual_network_name.nil? && managed_virtual_network_name.length > 127
      fail ArgumentError, "'managed_virtual_network_name' should satisfy the constraint - 'MinLength': '1'" if !managed_virtual_network_name.nil? && managed_virtual_network_name.length < 1
      fail ArgumentError, "'managed_virtual_network_name' should satisfy the constraint - 'Pattern': '^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$'" if !managed_virtual_network_name.nil? && managed_virtual_network_name.match(Regexp.new('^^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$$')).nil?
      fail ArgumentError, 'managed_private_endpoint_name is nil' if managed_private_endpoint_name.nil?
      fail ArgumentError, "'managed_private_endpoint_name' should satisfy the constraint - 'MaxLength': '127'" if !managed_private_endpoint_name.nil? && managed_private_endpoint_name.length > 127
      fail ArgumentError, "'managed_private_endpoint_name' should satisfy the constraint - 'MinLength': '1'" if !managed_private_endpoint_name.nil? && managed_private_endpoint_name.length < 1
      fail ArgumentError, "'managed_private_endpoint_name' should satisfy the constraint - 'Pattern': '^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$'" if !managed_private_endpoint_name.nil? && managed_private_endpoint_name.match(Regexp.new('^^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'managed_private_endpoint is nil' if managed_private_endpoint.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedPrivateEndpointResource.mapper()
      request_content = @client.serialize(request_mapper,  managed_private_endpoint)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/managedVirtualNetworks/{managedVirtualNetworkName}/managedPrivateEndpoints/{managedPrivateEndpointName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'factoryName' => factory_name,'managedVirtualNetworkName' => managed_virtual_network_name,'managedPrivateEndpointName' => managed_private_endpoint_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

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
            result_mapper = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedPrivateEndpointResource.mapper()
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
    # Gets a managed private endpoint.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param managed_private_endpoint_name [String] Managed private endpoint name
    # @param if_none_match [String] ETag of the managed private endpoint entity.
    # Should only be specified for get. If the ETag matches the existing entity
    # tag, or if * was provided, then no content will be returned.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagedPrivateEndpointResource] operation results.
    #
    def get(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, if_none_match:nil, custom_headers:nil)
      response = get_async(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, if_none_match:if_none_match, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a managed private endpoint.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param managed_private_endpoint_name [String] Managed private endpoint name
    # @param if_none_match [String] ETag of the managed private endpoint entity.
    # Should only be specified for get. If the ETag matches the existing entity
    # tag, or if * was provided, then no content will be returned.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, if_none_match:nil, custom_headers:nil)
      get_async(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, if_none_match:if_none_match, custom_headers:custom_headers).value!
    end

    #
    # Gets a managed private endpoint.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param managed_private_endpoint_name [String] Managed private endpoint name
    # @param if_none_match [String] ETag of the managed private endpoint entity.
    # Should only be specified for get. If the ETag matches the existing entity
    # tag, or if * was provided, then no content will be returned.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, if_none_match:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'factory_name is nil' if factory_name.nil?
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MaxLength': '63'" if !factory_name.nil? && factory_name.length > 63
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MinLength': '3'" if !factory_name.nil? && factory_name.length < 3
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$'" if !factory_name.nil? && factory_name.match(Regexp.new('^^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$$')).nil?
      fail ArgumentError, 'managed_virtual_network_name is nil' if managed_virtual_network_name.nil?
      fail ArgumentError, "'managed_virtual_network_name' should satisfy the constraint - 'MaxLength': '127'" if !managed_virtual_network_name.nil? && managed_virtual_network_name.length > 127
      fail ArgumentError, "'managed_virtual_network_name' should satisfy the constraint - 'MinLength': '1'" if !managed_virtual_network_name.nil? && managed_virtual_network_name.length < 1
      fail ArgumentError, "'managed_virtual_network_name' should satisfy the constraint - 'Pattern': '^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$'" if !managed_virtual_network_name.nil? && managed_virtual_network_name.match(Regexp.new('^^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$$')).nil?
      fail ArgumentError, 'managed_private_endpoint_name is nil' if managed_private_endpoint_name.nil?
      fail ArgumentError, "'managed_private_endpoint_name' should satisfy the constraint - 'MaxLength': '127'" if !managed_private_endpoint_name.nil? && managed_private_endpoint_name.length > 127
      fail ArgumentError, "'managed_private_endpoint_name' should satisfy the constraint - 'MinLength': '1'" if !managed_private_endpoint_name.nil? && managed_private_endpoint_name.length < 1
      fail ArgumentError, "'managed_private_endpoint_name' should satisfy the constraint - 'Pattern': '^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$'" if !managed_private_endpoint_name.nil? && managed_private_endpoint_name.match(Regexp.new('^^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-None-Match'] = if_none_match unless if_none_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/managedVirtualNetworks/{managedVirtualNetworkName}/managedPrivateEndpoints/{managedPrivateEndpointName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'factoryName' => factory_name,'managedVirtualNetworkName' => managed_virtual_network_name,'managedPrivateEndpointName' => managed_private_endpoint_name},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedPrivateEndpointResource.mapper()
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
    # Deletes a managed private endpoint.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param managed_private_endpoint_name [String] Managed private endpoint name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, custom_headers:nil)
      response = delete_async(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes a managed private endpoint.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param managed_private_endpoint_name [String] Managed private endpoint name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, custom_headers:nil)
      delete_async(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes a managed private endpoint.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param managed_private_endpoint_name [String] Managed private endpoint name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, factory_name, managed_virtual_network_name, managed_private_endpoint_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'factory_name is nil' if factory_name.nil?
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MaxLength': '63'" if !factory_name.nil? && factory_name.length > 63
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MinLength': '3'" if !factory_name.nil? && factory_name.length < 3
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$'" if !factory_name.nil? && factory_name.match(Regexp.new('^^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$$')).nil?
      fail ArgumentError, 'managed_virtual_network_name is nil' if managed_virtual_network_name.nil?
      fail ArgumentError, "'managed_virtual_network_name' should satisfy the constraint - 'MaxLength': '127'" if !managed_virtual_network_name.nil? && managed_virtual_network_name.length > 127
      fail ArgumentError, "'managed_virtual_network_name' should satisfy the constraint - 'MinLength': '1'" if !managed_virtual_network_name.nil? && managed_virtual_network_name.length < 1
      fail ArgumentError, "'managed_virtual_network_name' should satisfy the constraint - 'Pattern': '^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$'" if !managed_virtual_network_name.nil? && managed_virtual_network_name.match(Regexp.new('^^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$$')).nil?
      fail ArgumentError, 'managed_private_endpoint_name is nil' if managed_private_endpoint_name.nil?
      fail ArgumentError, "'managed_private_endpoint_name' should satisfy the constraint - 'MaxLength': '127'" if !managed_private_endpoint_name.nil? && managed_private_endpoint_name.length > 127
      fail ArgumentError, "'managed_private_endpoint_name' should satisfy the constraint - 'MinLength': '1'" if !managed_private_endpoint_name.nil? && managed_private_endpoint_name.length < 1
      fail ArgumentError, "'managed_private_endpoint_name' should satisfy the constraint - 'Pattern': '^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$'" if !managed_private_endpoint_name.nil? && managed_private_endpoint_name.match(Regexp.new('^^([_A-Za-z0-9]|([_A-Za-z0-9][-_A-Za-z0-9]{0,125}[_A-Za-z0-9]))$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/managedVirtualNetworks/{managedVirtualNetworkName}/managedPrivateEndpoints/{managedPrivateEndpointName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'factoryName' => factory_name,'managedVirtualNetworkName' => managed_virtual_network_name,'managedPrivateEndpointName' => managed_private_endpoint_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Lists managed private endpoints.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagedPrivateEndpointListResponse] operation results.
    #
    def list_by_factory_next(next_page_link, custom_headers:nil)
      response = list_by_factory_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists managed private endpoints.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_factory_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_factory_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists managed private endpoints.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_factory_next_async(next_page_link, custom_headers:nil)
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedPrivateEndpointListResponse.mapper()
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
    # Lists managed private endpoints.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param managed_virtual_network_name [String] Managed virtual network name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagedPrivateEndpointListResponse] which provide lazy access to
    # pages of the response.
    #
    def list_by_factory_as_lazy(resource_group_name, factory_name, managed_virtual_network_name, custom_headers:nil)
      response = list_by_factory_async(resource_group_name, factory_name, managed_virtual_network_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_factory_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
