# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_04_01_preview
  #
  # Budgets
  #
  class Budgets
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Budgets class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [CostManagementClient] reference to the CostManagementClient
    attr_reader :client

    #
    # Lists all budgets for the defined scope.
    #
    # @param scope [String] The scope associated with budget operations. This
    # includes '/subscriptions/{subscriptionId}/' for subscription scope,
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for
    # resourceGroup scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing
    # Account scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}'
    # for Department scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}'
    # for EnrollmentAccount scope,
    # '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for
    # Management Group scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}'
    # for billingProfile scope,
    # 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}'
    # for invoiceSection scope.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<BudgetModel>] operation results.
    #
    def list(scope, custom_headers:nil)
      first_page = list_as_lazy(scope, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists all budgets for the defined scope.
    #
    # @param scope [String] The scope associated with budget operations. This
    # includes '/subscriptions/{subscriptionId}/' for subscription scope,
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for
    # resourceGroup scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing
    # Account scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}'
    # for Department scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}'
    # for EnrollmentAccount scope,
    # '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for
    # Management Group scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}'
    # for billingProfile scope,
    # 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}'
    # for invoiceSection scope.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(scope, custom_headers:nil)
      list_async(scope, custom_headers:custom_headers).value!
    end

    #
    # Lists all budgets for the defined scope.
    #
    # @param scope [String] The scope associated with budget operations. This
    # includes '/subscriptions/{subscriptionId}/' for subscription scope,
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for
    # resourceGroup scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing
    # Account scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}'
    # for Department scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}'
    # for EnrollmentAccount scope,
    # '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for
    # Management Group scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}'
    # for billingProfile scope,
    # 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}'
    # for invoiceSection scope.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(scope, custom_headers:nil)
      fail ArgumentError, 'scope is nil' if scope.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{scope}/providers/Microsoft.CostManagement/budgets'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'scope' => scope},
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
            result_mapper = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::BudgetsListResult.mapper()
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
    # Lists all budgets for the defined scope.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BudgetsListResult] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all budgets for the defined scope.
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
    # Lists all budgets for the defined scope.
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
            result_mapper = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::BudgetsListResult.mapper()
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
    # Lists all budgets for the defined scope.
    #
    # @param scope [String] The scope associated with budget operations. This
    # includes '/subscriptions/{subscriptionId}/' for subscription scope,
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for
    # resourceGroup scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing
    # Account scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}'
    # for Department scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}'
    # for EnrollmentAccount scope,
    # '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for
    # Management Group scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}'
    # for billingProfile scope,
    # 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}'
    # for invoiceSection scope.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BudgetsListResult] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(scope, custom_headers:nil)
      response = list_async(scope, custom_headers:custom_headers).value!
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
