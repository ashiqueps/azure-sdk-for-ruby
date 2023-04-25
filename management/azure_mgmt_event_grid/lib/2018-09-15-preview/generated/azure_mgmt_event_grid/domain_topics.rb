# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2018_09_15_preview
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
    # Get a domain topic
    #
    # Get properties of a domain topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain
    # @param topic_name [String] Name of the topic
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DomainTopic] operation results.
    #
    def get(resource_group_name, domain_name, topic_name, custom_headers:nil)
      response = get_async(resource_group_name, domain_name, topic_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a domain topic
    #
    # Get properties of a domain topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain
    # @param topic_name [String] Name of the topic
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, domain_name, topic_name, custom_headers:nil)
      get_async(resource_group_name, domain_name, topic_name, custom_headers:custom_headers).value!
    end

    #
    # Get a domain topic
    #
    # Get properties of a domain topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Name of the domain
    # @param topic_name [String] Name of the topic
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, domain_name, topic_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'domain_name is nil' if domain_name.nil?
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/domains/{domainName}/topics/{topicName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'domainName' => domain_name,'topicName' => topic_name},
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
            result_mapper = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainTopic.mapper()
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
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DomainTopicsListResult] operation results.
    #
    def list_by_domain(resource_group_name, domain_name, custom_headers:nil)
      response = list_by_domain_async(resource_group_name, domain_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List domain topics.
    #
    # List all the topics in a domain.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Domain name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_domain_with_http_info(resource_group_name, domain_name, custom_headers:nil)
      list_by_domain_async(resource_group_name, domain_name, custom_headers:custom_headers).value!
    end

    #
    # List domain topics.
    #
    # List all the topics in a domain.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param domain_name [String] Domain name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_domain_async(resource_group_name, domain_name, custom_headers:nil)
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
            result_mapper = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainTopicsListResult.mapper()
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
