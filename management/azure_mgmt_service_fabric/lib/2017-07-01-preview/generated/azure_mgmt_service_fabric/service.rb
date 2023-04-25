# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  #
  # Service Fabric Management Client
  #
  class Service
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Service class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ServiceFabricManagementClient] reference to the ServiceFabricManagementClient
    attr_reader :client

    #
    # Returns a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceResource] operation results.
    #
    def get(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:nil)
      response = get_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:nil)
      get_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:custom_headers).value!
    end

    #
    # Returns a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'application_name is nil' if application_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/clusters/{clusterName}/applications/{applicationName}/services/{serviceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'applicationName' => application_name,'serviceName' => service_name},
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
            result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResource.mapper()
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
    # Creates or updates a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param parameters [ServiceResource] The service resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceResource] operation results.
    #
    def put(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:nil)
      response = put_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param parameters [ServiceResource] The service resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def put_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:nil)
      # Send request
      promise = begin_put_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResource.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Updates a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param parameters [ServiceResourceUpdate] The service resource for patch
    # operations.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceResourceUpdate] operation results.
    #
    def patch(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:nil)
      response = patch_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param parameters [ServiceResourceUpdate] The service resource for patch
    # operations.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def patch_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:nil)
      # Send request
      promise = begin_patch_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceUpdate.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Deletes a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:nil)
      response = delete_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:nil)
      # Send request
      promise = begin_delete_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:custom_headers)

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
    # Returns all service resources in the specified application.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceResourceList] operation results.
    #
    def list(subscription_id, resource_group_name, cluster_name, application_name, api_version, custom_headers:nil)
      response = list_async(subscription_id, resource_group_name, cluster_name, application_name, api_version, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns all service resources in the specified application.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(subscription_id, resource_group_name, cluster_name, application_name, api_version, custom_headers:nil)
      list_async(subscription_id, resource_group_name, cluster_name, application_name, api_version, custom_headers:custom_headers).value!
    end

    #
    # Returns all service resources in the specified application.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param api_version [String] The version of the API.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(subscription_id, resource_group_name, cluster_name, application_name, api_version, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'application_name is nil' if application_name.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/clusters/{clusterName}/applications/{applicationName}/services'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'applicationName' => application_name},
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
            result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceList.mapper()
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
    # Creates or updates a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param parameters [ServiceResource] The service resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceResource] operation results.
    #
    def begin_put(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:nil)
      response = begin_put_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param parameters [ServiceResource] The service resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_put_with_http_info(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:nil)
      begin_put_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param parameters [ServiceResource] The service resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_put_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'application_name is nil' if application_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResource.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/clusters/{clusterName}/applications/{applicationName}/services/{serviceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'applicationName' => application_name,'serviceName' => service_name},
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
            result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResource.mapper()
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
    # Updates a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param parameters [ServiceResourceUpdate] The service resource for patch
    # operations.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceResourceUpdate] operation results.
    #
    def begin_patch(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:nil)
      response = begin_patch_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param parameters [ServiceResourceUpdate] The service resource for patch
    # operations.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_patch_with_http_info(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:nil)
      begin_patch_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:custom_headers).value!
    end

    #
    # Updates a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param parameters [ServiceResourceUpdate] The service resource for patch
    # operations.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_patch_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, parameters, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'application_name is nil' if application_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceUpdate.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/clusters/{clusterName}/applications/{applicationName}/services/{serviceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'applicationName' => application_name,'serviceName' => service_name},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

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
            result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceUpdate.mapper()
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
    # Deletes a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:nil)
      response = begin_delete_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:nil)
      begin_delete_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:custom_headers).value!
    end

    #
    # Deletes a service resource with the specified name.
    #
    # @param subscription_id [String] The customer subscription identifier
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster resource
    # @param application_name [String] The name of the application resource.
    # @param service_name [String] The name of the service resource in the format
    # of {applicationName}~{serviceName}.
    # @param api_version [String] The version of the API.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(subscription_id, resource_group_name, cluster_name, application_name, service_name, api_version, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'application_name is nil' if application_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/clusters/{clusterName}/applications/{applicationName}/services/{serviceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'applicationName' => application_name,'serviceName' => service_name},
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
