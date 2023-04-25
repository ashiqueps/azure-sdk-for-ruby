# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  #
  # BackupSchedules
  #
  class BackupSchedules
    include MsRestAzure

    #
    # Creates and initializes a new instance of the BackupSchedules class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [StorSimple8000SeriesManagementClient] reference to the StorSimple8000SeriesManagementClient
    attr_reader :client

    #
    # Gets all the backup schedules in a backup policy.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BackupScheduleList] operation results.
    #
    def list_by_backup_policy(device_name, backup_policy_name, resource_group_name, manager_name, custom_headers:nil)
      response = list_by_backup_policy_async(device_name, backup_policy_name, resource_group_name, manager_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all the backup schedules in a backup policy.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_backup_policy_with_http_info(device_name, backup_policy_name, resource_group_name, manager_name, custom_headers:nil)
      list_by_backup_policy_async(device_name, backup_policy_name, resource_group_name, manager_name, custom_headers:custom_headers).value!
    end

    #
    # Gets all the backup schedules in a backup policy.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_backup_policy_async(device_name, backup_policy_name, resource_group_name, manager_name, custom_headers:nil)
      fail ArgumentError, 'device_name is nil' if device_name.nil?
      fail ArgumentError, 'backup_policy_name is nil' if backup_policy_name.nil?
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
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorSimple/managers/{managerName}/devices/{deviceName}/backupPolicies/{backupPolicyName}/schedules'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'deviceName' => device_name,'backupPolicyName' => backup_policy_name,'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'managerName' => manager_name},
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
            result_mapper = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupScheduleList.mapper()
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
    # Gets the properties of the specified backup schedule name.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The name of the backup schedule to be
    # fetched
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BackupSchedule] operation results.
    #
    def get(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:nil)
      response = get_async(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the properties of the specified backup schedule name.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The name of the backup schedule to be
    # fetched
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:nil)
      get_async(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the properties of the specified backup schedule name.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The name of the backup schedule to be
    # fetched
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:nil)
      fail ArgumentError, 'device_name is nil' if device_name.nil?
      fail ArgumentError, 'backup_policy_name is nil' if backup_policy_name.nil?
      fail ArgumentError, 'backup_schedule_name is nil' if backup_schedule_name.nil?
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
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorSimple/managers/{managerName}/devices/{deviceName}/backupPolicies/{backupPolicyName}/schedules/{backupScheduleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'deviceName' => device_name,'backupPolicyName' => backup_policy_name,'backupScheduleName' => backup_schedule_name,'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'managerName' => manager_name},
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
            result_mapper = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupSchedule.mapper()
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
    # Creates or updates the backup schedule.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The backup schedule name.
    # @param parameters [BackupSchedule] The backup schedule.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BackupSchedule] operation results.
    #
    def create_or_update(device_name, backup_policy_name, backup_schedule_name, parameters, resource_group_name, manager_name, custom_headers:nil)
      response = create_or_update_async(device_name, backup_policy_name, backup_schedule_name, parameters, resource_group_name, manager_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The backup schedule name.
    # @param parameters [BackupSchedule] The backup schedule.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(device_name, backup_policy_name, backup_schedule_name, parameters, resource_group_name, manager_name, custom_headers:nil)
      # Send request
      promise = begin_create_or_update_async(device_name, backup_policy_name, backup_schedule_name, parameters, resource_group_name, manager_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupSchedule.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Deletes the backup schedule.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The name the backup schedule.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:nil)
      response = delete_async(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The name the backup schedule.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:nil)
      # Send request
      promise = begin_delete_async(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:custom_headers)

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
    # Creates or updates the backup schedule.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The backup schedule name.
    # @param parameters [BackupSchedule] The backup schedule.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BackupSchedule] operation results.
    #
    def begin_create_or_update(device_name, backup_policy_name, backup_schedule_name, parameters, resource_group_name, manager_name, custom_headers:nil)
      response = begin_create_or_update_async(device_name, backup_policy_name, backup_schedule_name, parameters, resource_group_name, manager_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates the backup schedule.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The backup schedule name.
    # @param parameters [BackupSchedule] The backup schedule.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(device_name, backup_policy_name, backup_schedule_name, parameters, resource_group_name, manager_name, custom_headers:nil)
      begin_create_or_update_async(device_name, backup_policy_name, backup_schedule_name, parameters, resource_group_name, manager_name, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates the backup schedule.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The backup schedule name.
    # @param parameters [BackupSchedule] The backup schedule.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(device_name, backup_policy_name, backup_schedule_name, parameters, resource_group_name, manager_name, custom_headers:nil)
      fail ArgumentError, 'device_name is nil' if device_name.nil?
      fail ArgumentError, 'backup_policy_name is nil' if backup_policy_name.nil?
      fail ArgumentError, 'backup_schedule_name is nil' if backup_schedule_name.nil?
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
      request_mapper = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupSchedule.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorSimple/managers/{managerName}/devices/{deviceName}/backupPolicies/{backupPolicyName}/schedules/{backupScheduleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'deviceName' => device_name,'backupPolicyName' => backup_policy_name,'backupScheduleName' => backup_schedule_name,'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'managerName' => manager_name},
          skip_encoding_query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupSchedule.mapper()
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
    # Deletes the backup schedule.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The name the backup schedule.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:nil)
      response = begin_delete_async(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the backup schedule.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The name the backup schedule.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:nil)
      begin_delete_async(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes the backup schedule.
    #
    # @param device_name [String] The device name
    # @param backup_policy_name [String] The backup policy name.
    # @param backup_schedule_name [String] The name the backup schedule.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(device_name, backup_policy_name, backup_schedule_name, resource_group_name, manager_name, custom_headers:nil)
      fail ArgumentError, 'device_name is nil' if device_name.nil?
      fail ArgumentError, 'backup_policy_name is nil' if backup_policy_name.nil?
      fail ArgumentError, 'backup_schedule_name is nil' if backup_schedule_name.nil?
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
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorSimple/managers/{managerName}/devices/{deviceName}/backupPolicies/{backupPolicyName}/schedules/{backupScheduleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'deviceName' => device_name,'backupPolicyName' => backup_policy_name,'backupScheduleName' => backup_schedule_name,'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'managerName' => manager_name},
          skip_encoding_query_params: {'api-version' => @client.api_version},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
