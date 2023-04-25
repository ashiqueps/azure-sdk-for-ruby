# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_10_01
  #
  # Consumption management client provides access to consumption resources for
  # Azure Enterprise Subscriptions.
  #
  class UsageDetails
    include MsRestAzure

    #
    # Creates and initializes a new instance of the UsageDetails class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ConsumptionManagementClient] reference to the ConsumptionManagementClient
    attr_reader :client

    #
    # Lists the usage details for the defined scope. Usage details are available
    # via this API only for May 1, 2014 or later.
    #
    # @param scope [String] The scope associated with usage details operations.
    # This includes '/subscriptions/{subscriptionId}/' for subscription scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing
    # Account scope, '/providers/Microsoft.Billing/departments/{departmentId}' for
    # Department scope,
    # '/providers/Microsoft.Billing/enrollmentAccounts/{enrollmentAccountId}' for
    # EnrollmentAccount scope and
    # '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for
    # Management Group scope. For subscription, billing account, department,
    # enrollment account and management group, you can also add billing period to
    # the scope using
    # '/providers/Microsoft.Billing/billingPeriods/{billingPeriodName}'. For e.g.
    # to specify billing period at department scope use
    # '/providers/Microsoft.Billing/departments/{departmentId}/providers/Microsoft.Billing/billingPeriods/{billingPeriodName}'.
    # Also, Modern Commerce Account scopes are
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for
    # billingAccount scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}'
    # for billingProfile scope,
    # 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}/invoiceSections/{invoiceSectionId}'
    # for invoiceSection scope, and
    # 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/customers/{customerId}'
    # specific for partners.
    # @param expand [String] May be used to expand the properties/additionalInfo or
    # properties/meterDetails within a list of usage details. By default, these
    # fields are not included when listing usage details.
    # @param filter [String] May be used to filter usageDetails by
    # properties/resourceGroup, properties/resourceName, properties/resourceId,
    # properties/chargeType, properties/reservationId, properties/publisherType or
    # tags. The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does
    # not currently support 'ne', 'or', or 'not'. Tag filter is a key value pair
    # string where key and value is separated by a colon (:). PublisherType Filter
    # accepts two values azure and marketplace and it is currently supported for
    # Web Direct Offer Type
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N usageDetails.
    # @param metric [Metrictype] Allows to select different type of cost/usage
    # records. Possible values include: 'ActualCostMetricType',
    # 'AmortizedCostMetricType', 'UsageMetricType'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<UsageDetail>] operation results.
    #
    def list(scope, expand:nil, filter:nil, skiptoken:nil, top:nil, metric:nil, custom_headers:nil)
      first_page = list_as_lazy(scope, expand:expand, filter:filter, skiptoken:skiptoken, top:top, metric:metric, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the usage details for the defined scope. Usage details are available
    # via this API only for May 1, 2014 or later.
    #
    # @param scope [String] The scope associated with usage details operations.
    # This includes '/subscriptions/{subscriptionId}/' for subscription scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing
    # Account scope, '/providers/Microsoft.Billing/departments/{departmentId}' for
    # Department scope,
    # '/providers/Microsoft.Billing/enrollmentAccounts/{enrollmentAccountId}' for
    # EnrollmentAccount scope and
    # '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for
    # Management Group scope. For subscription, billing account, department,
    # enrollment account and management group, you can also add billing period to
    # the scope using
    # '/providers/Microsoft.Billing/billingPeriods/{billingPeriodName}'. For e.g.
    # to specify billing period at department scope use
    # '/providers/Microsoft.Billing/departments/{departmentId}/providers/Microsoft.Billing/billingPeriods/{billingPeriodName}'.
    # Also, Modern Commerce Account scopes are
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for
    # billingAccount scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}'
    # for billingProfile scope,
    # 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}/invoiceSections/{invoiceSectionId}'
    # for invoiceSection scope, and
    # 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/customers/{customerId}'
    # specific for partners.
    # @param expand [String] May be used to expand the properties/additionalInfo or
    # properties/meterDetails within a list of usage details. By default, these
    # fields are not included when listing usage details.
    # @param filter [String] May be used to filter usageDetails by
    # properties/resourceGroup, properties/resourceName, properties/resourceId,
    # properties/chargeType, properties/reservationId, properties/publisherType or
    # tags. The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does
    # not currently support 'ne', 'or', or 'not'. Tag filter is a key value pair
    # string where key and value is separated by a colon (:). PublisherType Filter
    # accepts two values azure and marketplace and it is currently supported for
    # Web Direct Offer Type
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N usageDetails.
    # @param metric [Metrictype] Allows to select different type of cost/usage
    # records. Possible values include: 'ActualCostMetricType',
    # 'AmortizedCostMetricType', 'UsageMetricType'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(scope, expand:nil, filter:nil, skiptoken:nil, top:nil, metric:nil, custom_headers:nil)
      list_async(scope, expand:expand, filter:filter, skiptoken:skiptoken, top:top, metric:metric, custom_headers:custom_headers).value!
    end

    #
    # Lists the usage details for the defined scope. Usage details are available
    # via this API only for May 1, 2014 or later.
    #
    # @param scope [String] The scope associated with usage details operations.
    # This includes '/subscriptions/{subscriptionId}/' for subscription scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing
    # Account scope, '/providers/Microsoft.Billing/departments/{departmentId}' for
    # Department scope,
    # '/providers/Microsoft.Billing/enrollmentAccounts/{enrollmentAccountId}' for
    # EnrollmentAccount scope and
    # '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for
    # Management Group scope. For subscription, billing account, department,
    # enrollment account and management group, you can also add billing period to
    # the scope using
    # '/providers/Microsoft.Billing/billingPeriods/{billingPeriodName}'. For e.g.
    # to specify billing period at department scope use
    # '/providers/Microsoft.Billing/departments/{departmentId}/providers/Microsoft.Billing/billingPeriods/{billingPeriodName}'.
    # Also, Modern Commerce Account scopes are
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for
    # billingAccount scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}'
    # for billingProfile scope,
    # 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}/invoiceSections/{invoiceSectionId}'
    # for invoiceSection scope, and
    # 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/customers/{customerId}'
    # specific for partners.
    # @param expand [String] May be used to expand the properties/additionalInfo or
    # properties/meterDetails within a list of usage details. By default, these
    # fields are not included when listing usage details.
    # @param filter [String] May be used to filter usageDetails by
    # properties/resourceGroup, properties/resourceName, properties/resourceId,
    # properties/chargeType, properties/reservationId, properties/publisherType or
    # tags. The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does
    # not currently support 'ne', 'or', or 'not'. Tag filter is a key value pair
    # string where key and value is separated by a colon (:). PublisherType Filter
    # accepts two values azure and marketplace and it is currently supported for
    # Web Direct Offer Type
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N usageDetails.
    # @param metric [Metrictype] Allows to select different type of cost/usage
    # records. Possible values include: 'ActualCostMetricType',
    # 'AmortizedCostMetricType', 'UsageMetricType'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(scope, expand:nil, filter:nil, skiptoken:nil, top:nil, metric:nil, custom_headers:nil)
      fail ArgumentError, 'scope is nil' if scope.nil?
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMaximum': '1000'" if !top.nil? && top > 1000
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMinimum': '1'" if !top.nil? && top < 1
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{scope}/providers/Microsoft.Consumption/usageDetails'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'scope' => scope},
          query_params: {'$expand' => expand,'$filter' => filter,'$skiptoken' => skiptoken,'$top' => top,'api-version' => @client.api_version,'metric' => metric},
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
            result_mapper = Azure::Consumption::Mgmt::V2019_10_01::Models::UsageDetailsListResult.mapper()
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
    # Lists the usage details for the defined scope. Usage details are available
    # via this API only for May 1, 2014 or later.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UsageDetailsListResult] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the usage details for the defined scope. Usage details are available
    # via this API only for May 1, 2014 or later.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists the usage details for the defined scope. Usage details are available
    # via this API only for May 1, 2014 or later.
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
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Consumption::Mgmt::V2019_10_01::Models::UsageDetailsListResult.mapper()
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
    # Lists the usage details for the defined scope. Usage details are available
    # via this API only for May 1, 2014 or later.
    #
    # @param scope [String] The scope associated with usage details operations.
    # This includes '/subscriptions/{subscriptionId}/' for subscription scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing
    # Account scope, '/providers/Microsoft.Billing/departments/{departmentId}' for
    # Department scope,
    # '/providers/Microsoft.Billing/enrollmentAccounts/{enrollmentAccountId}' for
    # EnrollmentAccount scope and
    # '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for
    # Management Group scope. For subscription, billing account, department,
    # enrollment account and management group, you can also add billing period to
    # the scope using
    # '/providers/Microsoft.Billing/billingPeriods/{billingPeriodName}'. For e.g.
    # to specify billing period at department scope use
    # '/providers/Microsoft.Billing/departments/{departmentId}/providers/Microsoft.Billing/billingPeriods/{billingPeriodName}'.
    # Also, Modern Commerce Account scopes are
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for
    # billingAccount scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}'
    # for billingProfile scope,
    # 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}/invoiceSections/{invoiceSectionId}'
    # for invoiceSection scope, and
    # 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/customers/{customerId}'
    # specific for partners.
    # @param expand [String] May be used to expand the properties/additionalInfo or
    # properties/meterDetails within a list of usage details. By default, these
    # fields are not included when listing usage details.
    # @param filter [String] May be used to filter usageDetails by
    # properties/resourceGroup, properties/resourceName, properties/resourceId,
    # properties/chargeType, properties/reservationId, properties/publisherType or
    # tags. The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does
    # not currently support 'ne', 'or', or 'not'. Tag filter is a key value pair
    # string where key and value is separated by a colon (:). PublisherType Filter
    # accepts two values azure and marketplace and it is currently supported for
    # Web Direct Offer Type
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N usageDetails.
    # @param metric [Metrictype] Allows to select different type of cost/usage
    # records. Possible values include: 'ActualCostMetricType',
    # 'AmortizedCostMetricType', 'UsageMetricType'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UsageDetailsListResult] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(scope, expand:nil, filter:nil, skiptoken:nil, top:nil, metric:nil, custom_headers:nil)
      response = list_async(scope, expand:expand, filter:filter, skiptoken:skiptoken, top:top, metric:metric, custom_headers:custom_headers).value!
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
