# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_10_15_preview
  #
  # Azure EventGrid Management Client
  #
  class DomainTopics
    include MsRestAzure

    #
    # Creates and initializes a new instance of the DomainTopics class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [EventGridManagementClient] reference to the EventGridManagementClient
    attr_reader :client

    #
    # Get a domain topic.
    #
    # Get properties of a domain topic.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the topic.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DomainTopic] operation results.
    #
    def get(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      response = get_async(resource_group_name, domain_name, domain_topic_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a domain topic.
    #
    # Get properties of a domain topic.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the topic.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      get_async(resource_group_name, domain_name, domain_topic_name, custom_headers:custom_headers).value!
    end

    #
    # Get a domain topic.
    #
    # Get properties of a domain topic.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the topic.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'domain_name is nil' if domain_name.nil?
      fail ArgumentError, 'domain_topic_name is nil' if domain_topic_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/domains/{domainName}/topics/{domainTopicName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'domainName' => domain_name,'domainTopicName' => domain_topic_name},
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
            result_mapper = Azure::EventGrid::Mgmt::V2020_10_15_preview::Models::DomainTopic.mapper()
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
    # Create or update a domain topic.
    #
    # Asynchronously creates or updates a new domain topic with the specified
    # parameters.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the domain topic.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DomainTopic] operation results.
    #
    def create_or_update(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      response = create_or_update_async(resource_group_name, domain_name, domain_topic_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the domain topic.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, domain_name, domain_topic_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::EventGrid::Mgmt::V2020_10_15_preview::Models::DomainTopic.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Delete a domain topic.
    #
    # Delete existing domain topic.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the domain topic.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      response = delete_async(resource_group_name, domain_name, domain_topic_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the domain topic.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      # Send request
      promise = begin_delete_async(resource_group_name, domain_name, domain_topic_name, custom_headers:custom_headers)

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
    # List domain topics.
    #
    # List all the topics in a domain.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Domain name.
    # @param filter [String] The query used to filter the search results using
    # OData syntax. Filtering is permitted on the 'name' property only and with
    # limited number of OData operations. These operations are: the 'contains'
    # function as well as the following logical operations: not, and, or, eq (for
    # equal), and ne (for not equal). No arithmetic operations are supported. The
    # following is a valid filter example: $filter=contains(namE, 'PATTERN') and
    # name ne 'PATTERN-1'. The following is not a valid filter example:
    # $filter=location eq 'westus'.
    # @param top [Integer] The number of results to return per page for the list
    # operation. Valid range for top parameter is 1 to 100. If not specified, the
    # default number of results to be returned is 20 items per page.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<DomainTopic>] operation results.
    #
    def list_by_domain(resource_group_name, domain_name, filter:nil, top:nil, custom_headers:nil)
      first_page = list_by_domain_as_lazy(resource_group_name, domain_name, filter:filter, top:top, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # List domain topics.
    #
    # List all the topics in a domain.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Domain name.
    # @param filter [String] The query used to filter the search results using
    # OData syntax. Filtering is permitted on the 'name' property only and with
    # limited number of OData operations. These operations are: the 'contains'
    # function as well as the following logical operations: not, and, or, eq (for
    # equal), and ne (for not equal). No arithmetic operations are supported. The
    # following is a valid filter example: $filter=contains(namE, 'PATTERN') and
    # name ne 'PATTERN-1'. The following is not a valid filter example:
    # $filter=location eq 'westus'.
    # @param top [Integer] The number of results to return per page for the list
    # operation. Valid range for top parameter is 1 to 100. If not specified, the
    # default number of results to be returned is 20 items per page.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_domain_with_http_info(resource_group_name, domain_name, filter:nil, top:nil, custom_headers:nil)
      list_by_domain_async(resource_group_name, domain_name, filter:filter, top:top, custom_headers:custom_headers).value!
    end

    #
    # List domain topics.
    #
    # List all the topics in a domain.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Domain name.
    # @param filter [String] The query used to filter the search results using
    # OData syntax. Filtering is permitted on the 'name' property only and with
    # limited number of OData operations. These operations are: the 'contains'
    # function as well as the following logical operations: not, and, or, eq (for
    # equal), and ne (for not equal). No arithmetic operations are supported. The
    # following is a valid filter example: $filter=contains(namE, 'PATTERN') and
    # name ne 'PATTERN-1'. The following is not a valid filter example:
    # $filter=location eq 'westus'.
    # @param top [Integer] The number of results to return per page for the list
    # operation. Valid range for top parameter is 1 to 100. If not specified, the
    # default number of results to be returned is 20 items per page.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_domain_async(resource_group_name, domain_name, filter:nil, top:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'domain_name is nil' if domain_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/domains/{domainName}/topics'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'domainName' => domain_name},
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$top' => top},
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
            result_mapper = Azure::EventGrid::Mgmt::V2020_10_15_preview::Models::DomainTopicsListResult.mapper()
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
    # Create or update a domain topic.
    #
    # Asynchronously creates or updates a new domain topic with the specified
    # parameters.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the domain topic.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DomainTopic] operation results.
    #
    def begin_create_or_update(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      response = begin_create_or_update_async(resource_group_name, domain_name, domain_topic_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or update a domain topic.
    #
    # Asynchronously creates or updates a new domain topic with the specified
    # parameters.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the domain topic.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      begin_create_or_update_async(resource_group_name, domain_name, domain_topic_name, custom_headers:custom_headers).value!
    end

    #
    # Create or update a domain topic.
    #
    # Asynchronously creates or updates a new domain topic with the specified
    # parameters.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the domain topic.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'domain_name is nil' if domain_name.nil?
      fail ArgumentError, 'domain_topic_name is nil' if domain_topic_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/domains/{domainName}/topics/{domainTopicName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'domainName' => domain_name,'domainTopicName' => domain_topic_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::EventGrid::Mgmt::V2020_10_15_preview::Models::DomainTopic.mapper()
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
    # Delete a domain topic.
    #
    # Delete existing domain topic.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the domain topic.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      response = begin_delete_async(resource_group_name, domain_name, domain_topic_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete a domain topic.
    #
    # Delete existing domain topic.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the domain topic.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      begin_delete_async(resource_group_name, domain_name, domain_topic_name, custom_headers:custom_headers).value!
    end

    #
    # Delete a domain topic.
    #
    # Delete existing domain topic.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain.
    # @param domain_topic_name [String] Name of the domain topic.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, domain_name, domain_topic_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'domain_name is nil' if domain_name.nil?
      fail ArgumentError, 'domain_topic_name is nil' if domain_topic_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/domains/{domainName}/topics/{domainTopicName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'domainName' => domain_name,'domainTopicName' => domain_topic_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # List domain topics.
    #
    # List all the topics in a domain.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DomainTopicsListResult] operation results.
    #
    def list_by_domain_next(next_page_link, custom_headers:nil)
      response = list_by_domain_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List domain topics.
    #
    # List all the topics in a domain.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_domain_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_domain_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # List domain topics.
    #
    # List all the topics in a domain.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_domain_next_async(next_page_link, custom_headers:nil)
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::EventGrid::Mgmt::V2020_10_15_preview::Models::DomainTopicsListResult.mapper()
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
    # List domain topics.
    #
    # List all the topics in a domain.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Domain name.
    # @param filter [String] The query used to filter the search results using
    # OData syntax. Filtering is permitted on the 'name' property only and with
    # limited number of OData operations. These operations are: the 'contains'
    # function as well as the following logical operations: not, and, or, eq (for
    # equal), and ne (for not equal). No arithmetic operations are supported. The
    # following is a valid filter example: $filter=contains(namE, 'PATTERN') and
    # name ne 'PATTERN-1'. The following is not a valid filter example:
    # $filter=location eq 'westus'.
    # @param top [Integer] The number of results to return per page for the list
    # operation. Valid range for top parameter is 1 to 100. If not specified, the
    # default number of results to be returned is 20 items per page.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DomainTopicsListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_domain_as_lazy(resource_group_name, domain_name, filter:nil, top:nil, custom_headers:nil)
      response = list_by_domain_async(resource_group_name, domain_name, filter:filter, top:top, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_domain_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
