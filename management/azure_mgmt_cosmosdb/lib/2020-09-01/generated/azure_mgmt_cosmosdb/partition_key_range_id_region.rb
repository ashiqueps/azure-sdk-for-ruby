# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_09_01
  #
  # Azure Cosmos DB Database Service Resource Provider REST API
  #
  class PartitionKeyRangeIdRegion
    include MsRestAzure

    #
    # Creates and initializes a new instance of the PartitionKeyRangeIdRegion class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [CosmosDBManagementClient] reference to the CosmosDBManagementClient
    attr_reader :client

    #
    # Retrieves the metrics determined by the given filter for the given partition
    # key range id and region.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param account_name [String] Cosmos DB database account name.
    # @param region [String] Cosmos DB region, with spaces between words and each
    # word capitalized.
    # @param database_rid [String] Cosmos DB database rid.
    # @param collection_rid [String] Cosmos DB collection rid.
    # @param partition_key_range_id [String] Partition Key Range Id for which to
    # get data.
    # @param filter [String] An OData filter expression that describes a subset of
    # metrics to return. The parameters that can be filtered are name.value (name
    # of the metric, can have an or of multiple names), startTime, endTime, and
    # timeGrain. The supported operator is eq.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PartitionMetricListResult] operation results.
    #
    def list_metrics(resource_group_name, account_name, region, database_rid, collection_rid, partition_key_range_id, filter, custom_headers:nil)
      response = list_metrics_async(resource_group_name, account_name, region, database_rid, collection_rid, partition_key_range_id, filter, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves the metrics determined by the given filter for the given partition
    # key range id and region.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param account_name [String] Cosmos DB database account name.
    # @param region [String] Cosmos DB region, with spaces between words and each
    # word capitalized.
    # @param database_rid [String] Cosmos DB database rid.
    # @param collection_rid [String] Cosmos DB collection rid.
    # @param partition_key_range_id [String] Partition Key Range Id for which to
    # get data.
    # @param filter [String] An OData filter expression that describes a subset of
    # metrics to return. The parameters that can be filtered are name.value (name
    # of the metric, can have an or of multiple names), startTime, endTime, and
    # timeGrain. The supported operator is eq.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_metrics_with_http_info(resource_group_name, account_name, region, database_rid, collection_rid, partition_key_range_id, filter, custom_headers:nil)
      list_metrics_async(resource_group_name, account_name, region, database_rid, collection_rid, partition_key_range_id, filter, custom_headers:custom_headers).value!
    end

    #
    # Retrieves the metrics determined by the given filter for the given partition
    # key range id and region.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param account_name [String] Cosmos DB database account name.
    # @param region [String] Cosmos DB region, with spaces between words and each
    # word capitalized.
    # @param database_rid [String] Cosmos DB database rid.
    # @param collection_rid [String] Cosmos DB collection rid.
    # @param partition_key_range_id [String] Partition Key Range Id for which to
    # get data.
    # @param filter [String] An OData filter expression that describes a subset of
    # metrics to return. The parameters that can be filtered are name.value (name
    # of the metric, can have an or of multiple names), startTime, endTime, and
    # timeGrain. The supported operator is eq.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_metrics_async(resource_group_name, account_name, region, database_rid, collection_rid, partition_key_range_id, filter, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '50'" if !account_name.nil? && account_name.length > 50
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[a-z0-9]+(-[a-z0-9]+)*'" if !account_name.nil? && account_name.match(Regexp.new('^^[a-z0-9]+(-[a-z0-9]+)*$')).nil?
      fail ArgumentError, 'region is nil' if region.nil?
      fail ArgumentError, 'database_rid is nil' if database_rid.nil?
      fail ArgumentError, 'collection_rid is nil' if collection_rid.nil?
      fail ArgumentError, 'partition_key_range_id is nil' if partition_key_range_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'filter is nil' if filter.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/region/{region}/databases/{databaseRid}/collections/{collectionRid}/partitionKeyRangeId/{partitionKeyRangeId}/metrics'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'region' => region,'databaseRid' => database_rid,'collectionRid' => collection_rid,'partitionKeyRangeId' => partition_key_range_id},
          query_params: {'api-version' => @client.api_version,'$filter' => filter},
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
            result_mapper = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PartitionMetricListResult.mapper()
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
