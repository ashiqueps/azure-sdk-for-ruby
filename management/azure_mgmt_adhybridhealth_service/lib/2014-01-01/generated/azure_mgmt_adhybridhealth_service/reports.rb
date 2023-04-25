# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  #
  # REST APIs for Azure Active Directory Connect Health
  #
  class Reports
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Reports class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ADHybridHealthService] reference to the ADHybridHealthService
    attr_reader :client

    #
    # Checks if the user is enabled for Dev Ops access.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Result] operation results.
    #
    def get_dev_ops(custom_headers:nil)
      response = get_dev_ops_async(custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Checks if the user is enabled for Dev Ops access.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_dev_ops_with_http_info(custom_headers:nil)
      get_dev_ops_async(custom_headers:custom_headers).value!
    end

    #
    # Checks if the user is enabled for Dev Ops access.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_dev_ops_async(custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.ADHybridHealthService/reports/DevOps/IsDevOps'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
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
            result_mapper = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Result.mapper()
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
