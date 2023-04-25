# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  #
  # ApiManagement Client
  #
  class GroupUsers
    include MsRestAzure

    #
    # Creates and initializes a new instance of the GroupUsers class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ApiManagementClient] reference to the ApiManagementClient
    attr_reader :client

    #
    # Lists a collection of the members of the group, specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param filter [String] | Field            | Supported operators    |
    # Supported functions               |
    # |------------------|------------------------|-----------------------------------|
    # | id               | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | firstName        | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | lastName         | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | email            | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | state            | eq                     | N/A
    # |
    # | registrationDate | ge, le, eq, ne, gt, lt | N/A
    # |
    # | note             | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<UserContract>] operation results.
    #
    def list_by_group(resource_group_name, service_name, group_id, filter:nil, top:nil, skip:nil, custom_headers:nil)
      first_page = list_by_group_as_lazy(resource_group_name, service_name, group_id, filter:filter, top:top, skip:skip, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists a collection of the members of the group, specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param filter [String] | Field            | Supported operators    |
    # Supported functions               |
    # |------------------|------------------------|-----------------------------------|
    # | id               | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | firstName        | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | lastName         | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | email            | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | state            | eq                     | N/A
    # |
    # | registrationDate | ge, le, eq, ne, gt, lt | N/A
    # |
    # | note             | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_group_with_http_info(resource_group_name, service_name, group_id, filter:nil, top:nil, skip:nil, custom_headers:nil)
      list_by_group_async(resource_group_name, service_name, group_id, filter:filter, top:top, skip:skip, custom_headers:custom_headers).value!
    end

    #
    # Lists a collection of the members of the group, specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param filter [String] | Field            | Supported operators    |
    # Supported functions               |
    # |------------------|------------------------|-----------------------------------|
    # | id               | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | firstName        | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | lastName         | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | email            | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | state            | eq                     | N/A
    # |
    # | registrationDate | ge, le, eq, ne, gt, lt | N/A
    # |
    # | note             | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_group_async(resource_group_name, service_name, group_id, filter:nil, top:nil, skip:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'group_id is nil' if group_id.nil?
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MaxLength': '256'" if !group_id.nil? && group_id.length > 256
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MinLength': '1'" if !group_id.nil? && group_id.length < 1
      fail ArgumentError, "'group_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !group_id.nil? && group_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMinimum': '1'" if !top.nil? && top < 1
      fail ArgumentError, "'skip' should satisfy the constraint - 'InclusiveMinimum': '0'" if !skip.nil? && skip < 0
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/groups/{groupId}/users'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'groupId' => group_id,'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'$top' => top,'$skip' => skip,'api-version' => @client.api_version},
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
            result_mapper = Azure::ApiManagement::Mgmt::V2016_07_07::Models::UserCollection.mapper()
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
    # Adds a user to the specified group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param uid [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ErrorBodyContract] operation results.
    #
    def add(resource_group_name, service_name, group_id, uid, custom_headers:nil)
      response = add_async(resource_group_name, service_name, group_id, uid, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Adds a user to the specified group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param uid [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_with_http_info(resource_group_name, service_name, group_id, uid, custom_headers:nil)
      add_async(resource_group_name, service_name, group_id, uid, custom_headers:custom_headers).value!
    end

    #
    # Adds a user to the specified group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param uid [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_async(resource_group_name, service_name, group_id, uid, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'group_id is nil' if group_id.nil?
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MaxLength': '256'" if !group_id.nil? && group_id.length > 256
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MinLength': '1'" if !group_id.nil? && group_id.length < 1
      fail ArgumentError, "'group_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !group_id.nil? && group_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, 'uid is nil' if uid.nil?
      fail ArgumentError, "'uid' should satisfy the constraint - 'MaxLength': '256'" if !uid.nil? && uid.length > 256
      fail ArgumentError, "'uid' should satisfy the constraint - 'MinLength': '1'" if !uid.nil? && uid.length < 1
      fail ArgumentError, "'uid' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !uid.nil? && uid.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/groups/{groupId}/users/{uid}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'groupId' => group_id,'uid' => uid,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201 || status_code == 204 || status_code == 405
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 405
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2016_07_07::Models::ErrorBodyContract.mapper()
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
    # Remove existing user from existing group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param uid [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ErrorBodyContract] operation results.
    #
    def remove(resource_group_name, service_name, group_id, uid, custom_headers:nil)
      response = remove_async(resource_group_name, service_name, group_id, uid, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Remove existing user from existing group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param uid [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def remove_with_http_info(resource_group_name, service_name, group_id, uid, custom_headers:nil)
      remove_async(resource_group_name, service_name, group_id, uid, custom_headers:custom_headers).value!
    end

    #
    # Remove existing user from existing group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param uid [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def remove_async(resource_group_name, service_name, group_id, uid, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'group_id is nil' if group_id.nil?
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MaxLength': '256'" if !group_id.nil? && group_id.length > 256
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MinLength': '1'" if !group_id.nil? && group_id.length < 1
      fail ArgumentError, "'group_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !group_id.nil? && group_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, 'uid is nil' if uid.nil?
      fail ArgumentError, "'uid' should satisfy the constraint - 'MaxLength': '256'" if !uid.nil? && uid.length > 256
      fail ArgumentError, "'uid' should satisfy the constraint - 'MinLength': '1'" if !uid.nil? && uid.length < 1
      fail ArgumentError, "'uid' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !uid.nil? && uid.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/groups/{groupId}/users/{uid}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'groupId' => group_id,'uid' => uid,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204 || status_code == 405
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 405
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2016_07_07::Models::ErrorBodyContract.mapper()
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
    # Lists a collection of the members of the group, specified by its identifier.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UserCollection] operation results.
    #
    def list_by_group_next(next_page_link, custom_headers:nil)
      response = list_by_group_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists a collection of the members of the group, specified by its identifier.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_group_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_group_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists a collection of the members of the group, specified by its identifier.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_group_next_async(next_page_link, custom_headers:nil)
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
            result_mapper = Azure::ApiManagement::Mgmt::V2016_07_07::Models::UserCollection.mapper()
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
    # Lists a collection of the members of the group, specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param filter [String] | Field            | Supported operators    |
    # Supported functions               |
    # |------------------|------------------------|-----------------------------------|
    # | id               | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | firstName        | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | lastName         | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | email            | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # | state            | eq                     | N/A
    # |
    # | registrationDate | ge, le, eq, ne, gt, lt | N/A
    # |
    # | note             | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith |
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UserCollection] which provide lazy access to pages of the response.
    #
    def list_by_group_as_lazy(resource_group_name, service_name, group_id, filter:nil, top:nil, skip:nil, custom_headers:nil)
      response = list_by_group_async(resource_group_name, service_name, group_id, filter:filter, top:top, skip:skip, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_group_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
