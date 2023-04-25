# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2016_11_01
  #
  # Creates an Azure Data Lake Analytics account management client.
  #
  class Locations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Locations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DataLakeAnalyticsAccountManagementClient] reference to the DataLakeAnalyticsAccountManagementClient
    attr_reader :client

    #
    # Gets subscription-level properties and limits for Data Lake Analytics
    # specified by resource location.
    #
    # @param location [String] The resource location without whitespace.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CapabilityInformation] operation results.
    #
    def get_capability(location, custom_headers:nil)
      response = get_capability_async(location, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets subscription-level properties and limits for Data Lake Analytics
    # specified by resource location.
    #
    # @param location [String] The resource location without whitespace.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_capability_with_http_info(location, custom_headers:nil)
      get_capability_async(location, custom_headers:custom_headers).value!
    end

    #
    # Gets subscription-level properties and limits for Data Lake Analytics
    # specified by resource location.
    #
    # @param location [String] The resource location without whitespace.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_capability_async(location, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.DataLakeAnalytics/locations/{location}/capability'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'location' => location},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 404
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CapabilityInformation.mapper()
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
