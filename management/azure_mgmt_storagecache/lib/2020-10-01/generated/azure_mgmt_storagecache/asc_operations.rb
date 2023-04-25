# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2020_10_01
  #
  # A Storage Cache provides scalable caching service for NAS clients, serving
  # data from either NFSv3 or Blob at-rest storage (referred to as "Storage
  # Targets"). These operations allow you to manage Caches.
  #
  class AscOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AscOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [StorageCacheManagementClient] reference to the StorageCacheManagementClient
    attr_reader :client

    #
    # Gets the status of an asynchronous operation for the Azure HPC Cache
    #
    # @param location [String] The name of the region used to look up the
    # operation.
    # @param operation_id [String] The operation id which uniquely identifies the
    # asynchronous operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AscOperation] operation results.
    #
    def get(location, operation_id, custom_headers:nil)
      response = get_async(location, operation_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the status of an asynchronous operation for the Azure HPC Cache
    #
    # @param location [String] The name of the region used to look up the
    # operation.
    # @param operation_id [String] The operation id which uniquely identifies the
    # asynchronous operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(location, operation_id, custom_headers:nil)
      get_async(location, operation_id, custom_headers:custom_headers).value!
    end

    #
    # Gets the status of an asynchronous operation for the Azure HPC Cache
    #
    # @param location [String] The name of the region used to look up the
    # operation.
    # @param operation_id [String] The operation id which uniquely identifies the
    # asynchronous operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(location, operation_id, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'operation_id is nil' if operation_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.StorageCache/locations/{location}/ascOperations/{operationId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'location' => location,'operationId' => operation_id},
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
            result_mapper = Azure::StorageCache::Mgmt::V2020_10_01::Models::AscOperation.mapper()
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
