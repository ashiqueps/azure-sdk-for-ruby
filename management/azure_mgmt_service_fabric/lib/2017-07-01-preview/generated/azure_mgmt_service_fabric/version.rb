# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  #
  # Service Fabric Management Client
  #
  class Version
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Version class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ServiceFabricManagementClient] reference to the ServiceFabricManagementClient
    attr_reader :client

    #
    # Returns an application type version resource.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VersionResource] operation results.
    #
    def get(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:nil)
      response = get_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns an application type version resource.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:nil)
      get_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:custom_headers).value!
    end

    #
    # Returns an application type version resource.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'application_type_name is nil' if application_type_name.nil?
      fail ArgumentError, 'version is nil' if version.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/clusters/{clusterName}/applicationTypes/{applicationTypeName}/versions/{version}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'applicationTypeName' => application_type_name,'version' => version},
          query_params: {'api-version' => api_version},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResource.mapper()
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
    # Provisions an application type version resource.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param parameters [VersionResource] The application type version resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VersionResource] operation results.
    #
    def put(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, parameters, custom_headers:nil)
      response = put_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param parameters [VersionResource] The application type version resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def put_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, parameters, custom_headers:nil)
      # Send request
      promise = begin_put_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResource.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Unprovisions an application type version resource.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:nil)
      response = delete_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:nil)
      # Send request
      promise = begin_delete_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Returns all versions for the specified application type.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VersionResourceList] operation results.
    #
    def list(subscription_id, resource_group_name, cluster_name, application_type_name, api_version, custom_headers:nil)
      response = list_async(subscription_id, resource_group_name, cluster_name, application_type_name, api_version, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns all versions for the specified application type.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(subscription_id, resource_group_name, cluster_name, application_type_name, api_version, custom_headers:nil)
      list_async(subscription_id, resource_group_name, cluster_name, application_type_name, api_version, custom_headers:custom_headers).value!
    end

    #
    # Returns all versions for the specified application type.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param api_version [String] The version of the API.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(subscription_id, resource_group_name, cluster_name, application_type_name, api_version, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'application_type_name is nil' if application_type_name.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/clusters/{clusterName}/applicationTypes/{applicationTypeName}/versions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'applicationTypeName' => application_type_name},
          query_params: {'api-version' => api_version},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResourceList.mapper()
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
    # Provisions an application type version resource.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param parameters [VersionResource] The application type version resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VersionResource] operation results.
    #
    def begin_put(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, parameters, custom_headers:nil)
      response = begin_put_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Provisions an application type version resource.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param parameters [VersionResource] The application type version resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_put_with_http_info(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, parameters, custom_headers:nil)
      begin_put_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, parameters, custom_headers:custom_headers).value!
    end

    #
    # Provisions an application type version resource.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param parameters [VersionResource] The application type version resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_put_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, parameters, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'application_type_name is nil' if application_type_name.nil?
      fail ArgumentError, 'version is nil' if version.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResource.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/clusters/{clusterName}/applicationTypes/{applicationTypeName}/versions/{version}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'applicationTypeName' => application_type_name,'version' => version},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResource.mapper()
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
    # Unprovisions an application type version resource.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:nil)
      response = begin_delete_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:custom_headers).value!
      nil
    end

    #
    # Unprovisions an application type version resource.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:nil)
      begin_delete_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:custom_headers).value!
    end

    #
    # Unprovisions an application type version resource.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_type_name [String] The name of the application type name
    # resource
    # @param version [String] The application type version.
    # @param api_version [String] The version of the API.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(subscription_id, resource_group_name, cluster_name, application_type_name, version, api_version, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'application_type_name is nil' if application_type_name.nil?
      fail ArgumentError, 'version is nil' if version.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/clusters/{clusterName}/applicationTypes/{applicationTypeName}/versions/{version}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'applicationTypeName' => application_type_name,'version' => version},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
