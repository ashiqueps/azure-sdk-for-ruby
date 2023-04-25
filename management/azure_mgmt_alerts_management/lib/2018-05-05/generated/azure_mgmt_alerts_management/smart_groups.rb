# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2018_05_05
  #
  # AlertsManagement Client
  #
  class SmartGroups
    include MsRestAzure

    #
    # Creates and initializes a new instance of the SmartGroups class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AlertsManagementClient] reference to the AlertsManagementClient
    attr_reader :client

    #
    # Get all Smart Groups within a specified subscription
    #
    # List all the Smart Groups within a specified subscription.
    #
    # @param target_resource [String] Filter by target resource( which is full ARM
    # ID) Default value is select all.
    # @param target_resource_group [String] Filter by target resource group name.
    # Default value is select all.
    # @param target_resource_type [String] Filter by target resource type. Default
    # value is select all.
    # @param monitor_service [MonitorService] Filter by monitor service which
    # generates the alert instance. Default value is select all. Possible values
    # include: 'Application Insights', 'ActivityLog Administrative', 'ActivityLog
    # Security', 'ActivityLog Recommendation', 'ActivityLog Policy', 'ActivityLog
    # Autoscale', 'Log Analytics', 'Nagios', 'Platform', 'SCOM', 'ServiceHealth',
    # 'SmartDetector', 'VM Insights', 'Zabbix'
    # @param monitor_condition [MonitorCondition] Filter by monitor condition which
    # is either 'Fired' or 'Resolved'. Default value is to select all. Possible
    # values include: 'Fired', 'Resolved'
    # @param severity [Severity] Filter by severity.  Default value is select all.
    # Possible values include: 'Sev0', 'Sev1', 'Sev2', 'Sev3', 'Sev4'
    # @param smart_group_state [AlertState] Filter by state of the smart group.
    # Default value is to select all. Possible values include: 'New',
    # 'Acknowledged', 'Closed'
    # @param time_range [TimeRange] Filter by time range by below listed values.
    # Default value is 1 day. Possible values include: '1h', '1d', '7d', '30d'
    # @param page_count [Integer] Determines number of alerts returned per page in
    # response. Permissible value is between 1 to 250. When the "includeContent"
    # filter is selected, maximum value allowed is 25. Default value is 25.
    # @param sort_by [SmartGroupsSortByFields] Sort the query results by input
    # field. Default value is sort by 'lastModifiedDateTime'. Possible values
    # include: 'alertsCount', 'state', 'severity', 'startDateTime',
    # 'lastModifiedDateTime'
    # @param sort_order [Enum] Sort the query results order in either ascending or
    # descending.  Default value is 'desc' for time fields and 'asc' for others.
    # Possible values include: 'asc', 'desc'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<SmartGroup>] operation results.
    #
    def get_all(target_resource:nil, target_resource_group:nil, target_resource_type:nil, monitor_service:nil, monitor_condition:nil, severity:nil, smart_group_state:nil, time_range:nil, page_count:nil, sort_by:nil, sort_order:nil, custom_headers:nil)
      first_page = get_all_as_lazy(target_resource:target_resource, target_resource_group:target_resource_group, target_resource_type:target_resource_type, monitor_service:monitor_service, monitor_condition:monitor_condition, severity:severity, smart_group_state:smart_group_state, time_range:time_range, page_count:page_count, sort_by:sort_by, sort_order:sort_order, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Get all Smart Groups within a specified subscription
    #
    # List all the Smart Groups within a specified subscription.
    #
    # @param target_resource [String] Filter by target resource( which is full ARM
    # ID) Default value is select all.
    # @param target_resource_group [String] Filter by target resource group name.
    # Default value is select all.
    # @param target_resource_type [String] Filter by target resource type. Default
    # value is select all.
    # @param monitor_service [MonitorService] Filter by monitor service which
    # generates the alert instance. Default value is select all. Possible values
    # include: 'Application Insights', 'ActivityLog Administrative', 'ActivityLog
    # Security', 'ActivityLog Recommendation', 'ActivityLog Policy', 'ActivityLog
    # Autoscale', 'Log Analytics', 'Nagios', 'Platform', 'SCOM', 'ServiceHealth',
    # 'SmartDetector', 'VM Insights', 'Zabbix'
    # @param monitor_condition [MonitorCondition] Filter by monitor condition which
    # is either 'Fired' or 'Resolved'. Default value is to select all. Possible
    # values include: 'Fired', 'Resolved'
    # @param severity [Severity] Filter by severity.  Default value is select all.
    # Possible values include: 'Sev0', 'Sev1', 'Sev2', 'Sev3', 'Sev4'
    # @param smart_group_state [AlertState] Filter by state of the smart group.
    # Default value is to select all. Possible values include: 'New',
    # 'Acknowledged', 'Closed'
    # @param time_range [TimeRange] Filter by time range by below listed values.
    # Default value is 1 day. Possible values include: '1h', '1d', '7d', '30d'
    # @param page_count [Integer] Determines number of alerts returned per page in
    # response. Permissible value is between 1 to 250. When the "includeContent"
    # filter is selected, maximum value allowed is 25. Default value is 25.
    # @param sort_by [SmartGroupsSortByFields] Sort the query results by input
    # field. Default value is sort by 'lastModifiedDateTime'. Possible values
    # include: 'alertsCount', 'state', 'severity', 'startDateTime',
    # 'lastModifiedDateTime'
    # @param sort_order [Enum] Sort the query results order in either ascending or
    # descending.  Default value is 'desc' for time fields and 'asc' for others.
    # Possible values include: 'asc', 'desc'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_all_with_http_info(target_resource:nil, target_resource_group:nil, target_resource_type:nil, monitor_service:nil, monitor_condition:nil, severity:nil, smart_group_state:nil, time_range:nil, page_count:nil, sort_by:nil, sort_order:nil, custom_headers:nil)
      get_all_async(target_resource:target_resource, target_resource_group:target_resource_group, target_resource_type:target_resource_type, monitor_service:monitor_service, monitor_condition:monitor_condition, severity:severity, smart_group_state:smart_group_state, time_range:time_range, page_count:page_count, sort_by:sort_by, sort_order:sort_order, custom_headers:custom_headers).value!
    end

    #
    # Get all Smart Groups within a specified subscription
    #
    # List all the Smart Groups within a specified subscription.
    #
    # @param target_resource [String] Filter by target resource( which is full ARM
    # ID) Default value is select all.
    # @param target_resource_group [String] Filter by target resource group name.
    # Default value is select all.
    # @param target_resource_type [String] Filter by target resource type. Default
    # value is select all.
    # @param monitor_service [MonitorService] Filter by monitor service which
    # generates the alert instance. Default value is select all. Possible values
    # include: 'Application Insights', 'ActivityLog Administrative', 'ActivityLog
    # Security', 'ActivityLog Recommendation', 'ActivityLog Policy', 'ActivityLog
    # Autoscale', 'Log Analytics', 'Nagios', 'Platform', 'SCOM', 'ServiceHealth',
    # 'SmartDetector', 'VM Insights', 'Zabbix'
    # @param monitor_condition [MonitorCondition] Filter by monitor condition which
    # is either 'Fired' or 'Resolved'. Default value is to select all. Possible
    # values include: 'Fired', 'Resolved'
    # @param severity [Severity] Filter by severity.  Default value is select all.
    # Possible values include: 'Sev0', 'Sev1', 'Sev2', 'Sev3', 'Sev4'
    # @param smart_group_state [AlertState] Filter by state of the smart group.
    # Default value is to select all. Possible values include: 'New',
    # 'Acknowledged', 'Closed'
    # @param time_range [TimeRange] Filter by time range by below listed values.
    # Default value is 1 day. Possible values include: '1h', '1d', '7d', '30d'
    # @param page_count [Integer] Determines number of alerts returned per page in
    # response. Permissible value is between 1 to 250. When the "includeContent"
    # filter is selected, maximum value allowed is 25. Default value is 25.
    # @param sort_by [SmartGroupsSortByFields] Sort the query results by input
    # field. Default value is sort by 'lastModifiedDateTime'. Possible values
    # include: 'alertsCount', 'state', 'severity', 'startDateTime',
    # 'lastModifiedDateTime'
    # @param sort_order [Enum] Sort the query results order in either ascending or
    # descending.  Default value is 'desc' for time fields and 'asc' for others.
    # Possible values include: 'asc', 'desc'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_all_async(target_resource:nil, target_resource_group:nil, target_resource_type:nil, monitor_service:nil, monitor_condition:nil, severity:nil, smart_group_state:nil, time_range:nil, page_count:nil, sort_by:nil, sort_order:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      @client.api_version = '2018-05-05'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.AlertsManagement/smartGroups'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'targetResource' => target_resource,'targetResourceGroup' => target_resource_group,'targetResourceType' => target_resource_type,'monitorService' => monitor_service,'monitorCondition' => monitor_condition,'severity' => severity,'smartGroupState' => smart_group_state,'timeRange' => time_range,'pageCount' => page_count,'sortBy' => sort_by,'sortOrder' => sort_order,'api-version' => @client.api_version},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::AlertsManagement::Mgmt::V2018_05_05::Models::SmartGroupsList.mapper()
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
    # Get information related to a specific Smart Group.
    #
    # Get information related to a specific Smart Group.
    #
    # @param smart_group_id [String] Smart group unique id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SmartGroup] operation results.
    #
    def get_by_id(smart_group_id, custom_headers:nil)
      response = get_by_id_async(smart_group_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get information related to a specific Smart Group.
    #
    # Get information related to a specific Smart Group.
    #
    # @param smart_group_id [String] Smart group unique id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_by_id_with_http_info(smart_group_id, custom_headers:nil)
      get_by_id_async(smart_group_id, custom_headers:custom_headers).value!
    end

    #
    # Get information related to a specific Smart Group.
    #
    # Get information related to a specific Smart Group.
    #
    # @param smart_group_id [String] Smart group unique id.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_by_id_async(smart_group_id, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'smart_group_id is nil' if smart_group_id.nil?
      @client.api_version = '2018-05-05'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.AlertsManagement/smartGroups/{smartGroupId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'smartGroupId' => smart_group_id},
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
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::AlertsManagement::Mgmt::V2018_05_05::Models::SmartGroup.mapper()
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
    # Change the state of a Smart Group.
    #
    # @param smart_group_id [String] Smart group unique id.
    # @param new_state [AlertState] New state of the alert. Possible values
    # include: 'New', 'Acknowledged', 'Closed'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SmartGroup] operation results.
    #
    def change_state(smart_group_id, new_state, custom_headers:nil)
      response = change_state_async(smart_group_id, new_state, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Change the state of a Smart Group.
    #
    # @param smart_group_id [String] Smart group unique id.
    # @param new_state [AlertState] New state of the alert. Possible values
    # include: 'New', 'Acknowledged', 'Closed'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def change_state_with_http_info(smart_group_id, new_state, custom_headers:nil)
      change_state_async(smart_group_id, new_state, custom_headers:custom_headers).value!
    end

    #
    # Change the state of a Smart Group.
    #
    # @param smart_group_id [String] Smart group unique id.
    # @param new_state [AlertState] New state of the alert. Possible values
    # include: 'New', 'Acknowledged', 'Closed'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def change_state_async(smart_group_id, new_state, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'smart_group_id is nil' if smart_group_id.nil?
      @client.api_version = '2018-05-05'
      fail ArgumentError, 'new_state is nil' if new_state.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.AlertsManagement/smartGroups/{smartGroupId}/changeState'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'smartGroupId' => smart_group_id},
          query_params: {'api-version' => @client.api_version,'newState' => new_state},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::AlertsManagement::Mgmt::V2018_05_05::Models::SmartGroup.mapper()
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
    # Get the history a smart group, which captures any Smart Group state changes
    # (New/Acknowledged/Closed) .
    #
    # @param smart_group_id [String] Smart group unique id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SmartGroupModification] operation results.
    #
    def get_history(smart_group_id, custom_headers:nil)
      response = get_history_async(smart_group_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the history a smart group, which captures any Smart Group state changes
    # (New/Acknowledged/Closed) .
    #
    # @param smart_group_id [String] Smart group unique id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_history_with_http_info(smart_group_id, custom_headers:nil)
      get_history_async(smart_group_id, custom_headers:custom_headers).value!
    end

    #
    # Get the history a smart group, which captures any Smart Group state changes
    # (New/Acknowledged/Closed) .
    #
    # @param smart_group_id [String] Smart group unique id.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_history_async(smart_group_id, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'smart_group_id is nil' if smart_group_id.nil?
      @client.api_version = '2018-05-05'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.AlertsManagement/smartGroups/{smartGroupId}/history'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'smartGroupId' => smart_group_id},
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
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::AlertsManagement::Mgmt::V2018_05_05::Models::SmartGroupModification.mapper()
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
    # Get all Smart Groups within a specified subscription
    #
    # List all the Smart Groups within a specified subscription.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SmartGroupsList] operation results.
    #
    def get_all_next(next_page_link, custom_headers:nil)
      response = get_all_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get all Smart Groups within a specified subscription
    #
    # List all the Smart Groups within a specified subscription.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_all_next_with_http_info(next_page_link, custom_headers:nil)
      get_all_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Get all Smart Groups within a specified subscription
    #
    # List all the Smart Groups within a specified subscription.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_all_next_async(next_page_link, custom_headers:nil)
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
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::AlertsManagement::Mgmt::V2018_05_05::Models::SmartGroupsList.mapper()
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
    # Get all Smart Groups within a specified subscription
    #
    # List all the Smart Groups within a specified subscription.
    #
    # @param target_resource [String] Filter by target resource( which is full ARM
    # ID) Default value is select all.
    # @param target_resource_group [String] Filter by target resource group name.
    # Default value is select all.
    # @param target_resource_type [String] Filter by target resource type. Default
    # value is select all.
    # @param monitor_service [MonitorService] Filter by monitor service which
    # generates the alert instance. Default value is select all. Possible values
    # include: 'Application Insights', 'ActivityLog Administrative', 'ActivityLog
    # Security', 'ActivityLog Recommendation', 'ActivityLog Policy', 'ActivityLog
    # Autoscale', 'Log Analytics', 'Nagios', 'Platform', 'SCOM', 'ServiceHealth',
    # 'SmartDetector', 'VM Insights', 'Zabbix'
    # @param monitor_condition [MonitorCondition] Filter by monitor condition which
    # is either 'Fired' or 'Resolved'. Default value is to select all. Possible
    # values include: 'Fired', 'Resolved'
    # @param severity [Severity] Filter by severity.  Default value is select all.
    # Possible values include: 'Sev0', 'Sev1', 'Sev2', 'Sev3', 'Sev4'
    # @param smart_group_state [AlertState] Filter by state of the smart group.
    # Default value is to select all. Possible values include: 'New',
    # 'Acknowledged', 'Closed'
    # @param time_range [TimeRange] Filter by time range by below listed values.
    # Default value is 1 day. Possible values include: '1h', '1d', '7d', '30d'
    # @param page_count [Integer] Determines number of alerts returned per page in
    # response. Permissible value is between 1 to 250. When the "includeContent"
    # filter is selected, maximum value allowed is 25. Default value is 25.
    # @param sort_by [SmartGroupsSortByFields] Sort the query results by input
    # field. Default value is sort by 'lastModifiedDateTime'. Possible values
    # include: 'alertsCount', 'state', 'severity', 'startDateTime',
    # 'lastModifiedDateTime'
    # @param sort_order [Enum] Sort the query results order in either ascending or
    # descending.  Default value is 'desc' for time fields and 'asc' for others.
    # Possible values include: 'asc', 'desc'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SmartGroupsList] which provide lazy access to pages of the response.
    #
    def get_all_as_lazy(target_resource:nil, target_resource_group:nil, target_resource_type:nil, monitor_service:nil, monitor_condition:nil, severity:nil, smart_group_state:nil, time_range:nil, page_count:nil, sort_by:nil, sort_order:nil, custom_headers:nil)
      response = get_all_async(target_resource:target_resource, target_resource_group:target_resource_group, target_resource_type:target_resource_type, monitor_service:monitor_service, monitor_condition:monitor_condition, severity:severity, smart_group_state:smart_group_state, time_range:time_range, page_count:page_count, sort_by:sort_by, sort_order:sort_order, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          get_all_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
