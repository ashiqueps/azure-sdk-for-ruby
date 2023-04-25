# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2017_03_01
  #
  # ApiManagement Client
  #
  class ApiIssuAttachment
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ApiIssuAttachment class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ApiManagementClient] reference to the ApiManagementClient
    attr_reader :client

    #
    # Gets the entity state (Etag) version of the issue Attachment for an API
    # specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param attachment_id [String] Attachment identifier within an Issue. Must be
    # unique in the current Issue.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def head(resource_group_name, service_name, api_id, issue_id, attachment_id, custom_headers:nil)
      response = head_async(resource_group_name, service_name, api_id, issue_id, attachment_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # Gets the entity state (Etag) version of the issue Attachment for an API
    # specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param attachment_id [String] Attachment identifier within an Issue. Must be
    # unique in the current Issue.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def head_with_http_info(resource_group_name, service_name, api_id, issue_id, attachment_id, custom_headers:nil)
      head_async(resource_group_name, service_name, api_id, issue_id, attachment_id, custom_headers:custom_headers).value!
    end

    #
    # Gets the entity state (Etag) version of the issue Attachment for an API
    # specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API identifier. Must be unique in the current API
    # Management service instance.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param attachment_id [String] Attachment identifier within an Issue. Must be
    # unique in the current Issue.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def head_async(resource_group_name, service_name, api_id, issue_id, attachment_id, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'api_id is nil' if api_id.nil?
      fail ArgumentError, "'api_id' should satisfy the constraint - 'MaxLength': '256'" if !api_id.nil? && api_id.length > 256
      fail ArgumentError, "'api_id' should satisfy the constraint - 'MinLength': '1'" if !api_id.nil? && api_id.length < 1
      fail ArgumentError, "'api_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !api_id.nil? && api_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, 'issue_id is nil' if issue_id.nil?
      fail ArgumentError, "'issue_id' should satisfy the constraint - 'MaxLength': '256'" if !issue_id.nil? && issue_id.length > 256
      fail ArgumentError, "'issue_id' should satisfy the constraint - 'MinLength': '1'" if !issue_id.nil? && issue_id.length < 1
      fail ArgumentError, "'issue_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !issue_id.nil? && issue_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, 'attachment_id is nil' if attachment_id.nil?
      fail ArgumentError, "'attachment_id' should satisfy the constraint - 'MaxLength': '256'" if !attachment_id.nil? && attachment_id.length > 256
      fail ArgumentError, "'attachment_id' should satisfy the constraint - 'MinLength': '1'" if !attachment_id.nil? && attachment_id.length < 1
      fail ArgumentError, "'attachment_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !attachment_id.nil? && attachment_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/issues/{issueId}/attachments/{attachmentId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'apiId' => api_id,'issueId' => issue_id,'attachmentId' => attachment_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:head, path_template, options)

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

        result
      end

      promise.execute
    end

  end
end
