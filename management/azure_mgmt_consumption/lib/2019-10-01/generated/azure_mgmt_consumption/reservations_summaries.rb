# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_10_01
  #
  # Consumption management client provides access to consumption resources for
  # Azure Enterprise Subscriptions.
  #
  class ReservationsSummaries
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ReservationsSummaries class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ConsumptionManagementClient] reference to the ConsumptionManagementClient
    attr_reader :client

    #
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param grain [Datagrain] Can be daily or monthly. Possible values include:
    # 'DailyGrain', 'MonthlyGrain'
    # @param filter [String] Required only for daily grain. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ReservationSummary>] operation results.
    #
    def list_by_reservation_order(reservation_order_id, grain, filter:nil, custom_headers:nil)
      first_page = list_by_reservation_order_as_lazy(reservation_order_id, grain, filter:filter, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param grain [Datagrain] Can be daily or monthly. Possible values include:
    # 'DailyGrain', 'MonthlyGrain'
    # @param filter [String] Required only for daily grain. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_reservation_order_with_http_info(reservation_order_id, grain, filter:nil, custom_headers:nil)
      list_by_reservation_order_async(reservation_order_id, grain, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param grain [Datagrain] Can be daily or monthly. Possible values include:
    # 'DailyGrain', 'MonthlyGrain'
    # @param filter [String] Required only for daily grain. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_reservation_order_async(reservation_order_id, grain, filter:nil, custom_headers:nil)
      fail ArgumentError, 'reservation_order_id is nil' if reservation_order_id.nil?
      fail ArgumentError, 'grain is nil' if grain.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Capacity/reservationorders/{reservationOrderId}/providers/Microsoft.Consumption/reservationSummaries'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'reservationOrderId' => reservation_order_id},
          query_params: {'grain' => grain,'$filter' => filter,'api-version' => @client.api_version},
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
            result_mapper = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationSummariesListResult.mapper()
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
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param reservation_id [String] Id of the reservation
    # @param grain [Datagrain] Can be daily or monthly. Possible values include:
    # 'DailyGrain', 'MonthlyGrain'
    # @param filter [String] Required only for daily grain. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ReservationSummary>] operation results.
    #
    def list_by_reservation_order_and_reservation(reservation_order_id, reservation_id, grain, filter:nil, custom_headers:nil)
      first_page = list_by_reservation_order_and_reservation_as_lazy(reservation_order_id, reservation_id, grain, filter:filter, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param reservation_id [String] Id of the reservation
    # @param grain [Datagrain] Can be daily or monthly. Possible values include:
    # 'DailyGrain', 'MonthlyGrain'
    # @param filter [String] Required only for daily grain. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_reservation_order_and_reservation_with_http_info(reservation_order_id, reservation_id, grain, filter:nil, custom_headers:nil)
      list_by_reservation_order_and_reservation_async(reservation_order_id, reservation_id, grain, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param reservation_id [String] Id of the reservation
    # @param grain [Datagrain] Can be daily or monthly. Possible values include:
    # 'DailyGrain', 'MonthlyGrain'
    # @param filter [String] Required only for daily grain. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_reservation_order_and_reservation_async(reservation_order_id, reservation_id, grain, filter:nil, custom_headers:nil)
      fail ArgumentError, 'reservation_order_id is nil' if reservation_order_id.nil?
      fail ArgumentError, 'reservation_id is nil' if reservation_id.nil?
      fail ArgumentError, 'grain is nil' if grain.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Capacity/reservationorders/{reservationOrderId}/reservations/{reservationId}/providers/Microsoft.Consumption/reservationSummaries'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'reservationOrderId' => reservation_order_id,'reservationId' => reservation_id},
          query_params: {'grain' => grain,'$filter' => filter,'api-version' => @client.api_version},
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
            result_mapper = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationSummariesListResult.mapper()
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
    # Lists the reservations summaries for the defined scope daily or monthly
    # grain.
    #
    # @param scope [String] The scope associated with reservations summaries
    # operations. This includes
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for
    # BillingAccount scope (legacy), and
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}'
    # for BillingProfile scope (modern).
    # @param grain [Datagrain] Can be daily or monthly. Possible values include:
    # 'DailyGrain', 'MonthlyGrain'
    # @param start_date [String] Start date
    # @param end_date [String] End date
    # @param filter [String] Required only for daily grain. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ReservationSummary>] operation results.
    #
    def list(scope, grain, start_date:nil, end_date:nil, filter:nil, custom_headers:nil)
      first_page = list_as_lazy(scope, grain, start_date:start_date, end_date:end_date, filter:filter, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the reservations summaries for the defined scope daily or monthly
    # grain.
    #
    # @param scope [String] The scope associated with reservations summaries
    # operations. This includes
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for
    # BillingAccount scope (legacy), and
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}'
    # for BillingProfile scope (modern).
    # @param grain [Datagrain] Can be daily or monthly. Possible values include:
    # 'DailyGrain', 'MonthlyGrain'
    # @param start_date [String] Start date
    # @param end_date [String] End date
    # @param filter [String] Required only for daily grain. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(scope, grain, start_date:nil, end_date:nil, filter:nil, custom_headers:nil)
      list_async(scope, grain, start_date:start_date, end_date:end_date, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # Lists the reservations summaries for the defined scope daily or monthly
    # grain.
    #
    # @param scope [String] The scope associated with reservations summaries
    # operations. This includes
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for
    # BillingAccount scope (legacy), and
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}'
    # for BillingProfile scope (modern).
    # @param grain [Datagrain] Can be daily or monthly. Possible values include:
    # 'DailyGrain', 'MonthlyGrain'
    # @param start_date [String] Start date
    # @param end_date [String] End date
    # @param filter [String] Required only for daily grain. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(scope, grain, start_date:nil, end_date:nil, filter:nil, custom_headers:nil)
      fail ArgumentError, 'scope is nil' if scope.nil?
      fail ArgumentError, 'grain is nil' if grain.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{scope}/providers/Microsoft.Consumption/reservationSummaries'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'scope' => scope},
          query_params: {'grain' => grain,'startDate' => start_date,'endDate' => end_date,'$filter' => filter,'api-version' => @client.api_version},
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
            result_mapper = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationSummariesListResult.mapper()
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
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ReservationSummariesListResult] operation results.
    #
    def list_by_reservation_order_next(next_page_link, custom_headers:nil)
      response = list_by_reservation_order_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_reservation_order_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_reservation_order_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_reservation_order_next_async(next_page_link, custom_headers:nil)
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
            result_mapper = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationSummariesListResult.mapper()
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
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ReservationSummariesListResult] operation results.
    #
    def list_by_reservation_order_and_reservation_next(next_page_link, custom_headers:nil)
      response = list_by_reservation_order_and_reservation_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_reservation_order_and_reservation_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_reservation_order_and_reservation_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_reservation_order_and_reservation_next_async(next_page_link, custom_headers:nil)
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
            result_mapper = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationSummariesListResult.mapper()
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
    # Lists the reservations summaries for the defined scope daily or monthly
    # grain.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ReservationSummariesListResult] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the reservations summaries for the defined scope daily or monthly
    # grain.
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
    # Lists the reservations summaries for the defined scope daily or monthly
    # grain.
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
            result_mapper = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationSummariesListResult.mapper()
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
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param grain [Datagrain] Can be daily or monthly. Possible values include:
    # 'DailyGrain', 'MonthlyGrain'
    # @param filter [String] Required only for daily grain. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ReservationSummariesListResult] which provide lazy access to pages
    # of the response.
    #
    def list_by_reservation_order_as_lazy(reservation_order_id, grain, filter:nil, custom_headers:nil)
      response = list_by_reservation_order_async(reservation_order_id, grain, filter:filter, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_reservation_order_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

    #
    # Lists the reservations summaries for daily or monthly grain.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param reservation_id [String] Id of the reservation
    # @param grain [Datagrain] Can be daily or monthly. Possible values include:
    # 'DailyGrain', 'MonthlyGrain'
    # @param filter [String] Required only for daily grain. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ReservationSummariesListResult] which provide lazy access to pages
    # of the response.
    #
    def list_by_reservation_order_and_reservation_as_lazy(reservation_order_id, reservation_id, grain, filter:nil, custom_headers:nil)
      response = list_by_reservation_order_and_reservation_async(reservation_order_id, reservation_id, grain, filter:filter, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_reservation_order_and_reservation_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

    #
    # Lists the reservations summaries for the defined scope daily or monthly
    # grain.
    #
    # @param scope [String] The scope associated with reservations summaries
    # operations. This includes
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for
    # BillingAccount scope (legacy), and
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}'
    # for BillingProfile scope (modern).
    # @param grain [Datagrain] Can be daily or monthly. Possible values include:
    # 'DailyGrain', 'MonthlyGrain'
    # @param start_date [String] Start date
    # @param end_date [String] End date
    # @param filter [String] Required only for daily grain. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ReservationSummariesListResult] which provide lazy access to pages
    # of the response.
    #
    def list_as_lazy(scope, grain, start_date:nil, end_date:nil, filter:nil, custom_headers:nil)
      response = list_async(scope, grain, start_date:start_date, end_date:end_date, filter:filter, custom_headers:custom_headers).value!
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
