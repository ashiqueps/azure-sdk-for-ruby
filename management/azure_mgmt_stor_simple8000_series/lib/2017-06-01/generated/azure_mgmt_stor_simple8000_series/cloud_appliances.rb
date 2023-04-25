# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  #
  # CloudAppliances
  #
  class CloudAppliances
    include MsRestAzure

    #
    # Creates and initializes a new instance of the CloudAppliances class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [StorSimple8000SeriesManagementClient] reference to the StorSimple8000SeriesManagementClient
    attr_reader :client

    #
    # Lists supported cloud appliance models and supported configurations.
    #
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CloudApplianceConfigurationList] operation results.
    #
    def list_supported_configurations(resource_group_name, manager_name, custom_headers:nil)
      response = list_supported_configurations_async(resource_group_name, manager_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists supported cloud appliance models and supported configurations.
    #
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_supported_configurations_with_http_info(resource_group_name, manager_name, custom_headers:nil)
      list_supported_configurations_async(resource_group_name, manager_name, custom_headers:custom_headers).value!
    end

    #
    # Lists supported cloud appliance models and supported configurations.
    #
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_supported_configurations_async(resource_group_name, manager_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'manager_name is nil' if manager_name.nil?
      fail ArgumentError, "'manager_name' should satisfy the constraint - 'MaxLength': '50'" if !manager_name.nil? && manager_name.length > 50
      fail ArgumentError, "'manager_name' should satisfy the constraint - 'MinLength': '2'" if !manager_name.nil? && manager_name.length < 2
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorSimple/managers/{managerName}/cloudApplianceConfigurations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'managerName' => manager_name},
          skip_encoding_query_params: {'api-version' => @client.api_version},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfigurationList.mapper()
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
    # Provisions cloud appliance.
    #
    # @param parameters [CloudAppliance] The cloud appliance
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def provision(parameters, resource_group_name, manager_name, custom_headers:nil)
      response = provision_async(parameters, resource_group_name, manager_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param parameters [CloudAppliance] The cloud appliance
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def provision_async(parameters, resource_group_name, manager_name, custom_headers:nil)
      # Send request
      promise = begin_provision_async(parameters, resource_group_name, manager_name, custom_headers:custom_headers)

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
    # Provisions cloud appliance.
    #
    # @param parameters [CloudAppliance] The cloud appliance
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_provision(parameters, resource_group_name, manager_name, custom_headers:nil)
      response = begin_provision_async(parameters, resource_group_name, manager_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Provisions cloud appliance.
    #
    # @param parameters [CloudAppliance] The cloud appliance
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_provision_with_http_info(parameters, resource_group_name, manager_name, custom_headers:nil)
      begin_provision_async(parameters, resource_group_name, manager_name, custom_headers:custom_headers).value!
    end

    #
    # Provisions cloud appliance.
    #
    # @param parameters [CloudAppliance] The cloud appliance
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_provision_async(parameters, resource_group_name, manager_name, custom_headers:nil)
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'manager_name is nil' if manager_name.nil?
      fail ArgumentError, "'manager_name' should satisfy the constraint - 'MaxLength': '50'" if !manager_name.nil? && manager_name.length > 50
      fail ArgumentError, "'manager_name' should satisfy the constraint - 'MinLength': '2'" if !manager_name.nil? && manager_name.length < 2
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudAppliance.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorSimple/managers/{managerName}/provisionCloudAppliance'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'managerName' => manager_name},
          skip_encoding_query_params: {'api-version' => @client.api_version},
          body: request_content,
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
