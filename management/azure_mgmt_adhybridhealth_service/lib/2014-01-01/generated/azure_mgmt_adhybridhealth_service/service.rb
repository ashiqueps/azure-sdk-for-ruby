# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  #
  # REST APIs for Azure Active Directory Connect Health
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

    # @return [ADHybridHealthService] reference to the ADHybridHealthService
    attr_reader :client

    #
    # Gets the server related metrics for a given metric and group combination.
    #
    # @param service_name [String] The name of the service.
    # @param metric_name [String] The metric name
    # @param group_name [String] The group name
    # @param group_key [String] The group key
    # @param from_date [DateTime] The start date.
    # @param to_date [DateTime] The end date.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MetricSets] operation results.
    #
    def get_metrics(service_name, metric_name, group_name, group_key:nil, from_date:nil, to_date:nil, custom_headers:nil)
      response = get_metrics_async(service_name, metric_name, group_name, group_key:group_key, from_date:from_date, to_date:to_date, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the server related metrics for a given metric and group combination.
    #
    # @param service_name [String] The name of the service.
    # @param metric_name [String] The metric name
    # @param group_name [String] The group name
    # @param group_key [String] The group key
    # @param from_date [DateTime] The start date.
    # @param to_date [DateTime] The end date.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_metrics_with_http_info(service_name, metric_name, group_name, group_key:nil, from_date:nil, to_date:nil, custom_headers:nil)
      get_metrics_async(service_name, metric_name, group_name, group_key:group_key, from_date:from_date, to_date:to_date, custom_headers:custom_headers).value!
    end

    #
    # Gets the server related metrics for a given metric and group combination.
    #
    # @param service_name [String] The name of the service.
    # @param metric_name [String] The metric name
    # @param group_name [String] The group name
    # @param group_key [String] The group key
    # @param from_date [DateTime] The start date.
    # @param to_date [DateTime] The end date.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_metrics_async(service_name, metric_name, group_name, group_key:nil, from_date:nil, to_date:nil, custom_headers:nil)
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'metric_name is nil' if metric_name.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.ADHybridHealthService/services/{serviceName}/metrics/{metricName}/groups/{groupName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'serviceName' => service_name,'metricName' => metric_name,'groupName' => group_name},
          query_params: {'groupKey' => group_key,'fromDate' => from_date,'toDate' => to_date,'api-version' => @client.api_version},
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
            result_mapper = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MetricSets.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
