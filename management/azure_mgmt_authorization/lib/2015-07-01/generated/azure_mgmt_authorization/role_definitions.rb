# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Authorization::Mgmt::V2015_07_01
  #
  # Role based access control provides you a way to apply granular level policy
  # administration down to individual resources or resource groups. These
  # operations enable you to manage role definitions and role assignments. A
  # role definition describes the set of actions that can be performed on
  # resources. A role assignment grants access to Azure Active Directory users.
  #
  class RoleDefinitions
    include MsRestAzure

    #
    # Creates and initializes a new instance of the RoleDefinitions class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AuthorizationManagementClient] reference to the AuthorizationManagementClient
    attr_reader :client

    #
    # Deletes a role definition.
    #
    # @param scope [String] The scope of the role definition.
    # @param role_definition_id [String] The ID of the role definition to delete.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RoleDefinition] operation results.
    #
    def delete(scope, role_definition_id, custom_headers:nil)
      response = delete_async(scope, role_definition_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Deletes a role definition.
    #
    # @param scope [String] The scope of the role definition.
    # @param role_definition_id [String] The ID of the role definition to delete.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(scope, role_definition_id, custom_headers:nil)
      delete_async(scope, role_definition_id, custom_headers:custom_headers).value!
    end

    #
    # Deletes a role definition.
    #
    # @param scope [String] The scope of the role definition.
    # @param role_definition_id [String] The ID of the role definition to delete.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(scope, role_definition_id, custom_headers:nil)
      fail ArgumentError, 'scope is nil' if scope.nil?
      fail ArgumentError, 'role_definition_id is nil' if role_definition_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{scope}/providers/Microsoft.Authorization/roleDefinitions/{roleDefinitionId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'roleDefinitionId' => role_definition_id},
          skip_encoding_path_params: {'scope' => scope},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinition.mapper()
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
    # Get role definition by name (GUID).
    #
    # @param scope [String] The scope of the role definition.
    # @param role_definition_id [String] The ID of the role definition.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RoleDefinition] operation results.
    #
    def get(scope, role_definition_id, custom_headers:nil)
      response = get_async(scope, role_definition_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get role definition by name (GUID).
    #
    # @param scope [String] The scope of the role definition.
    # @param role_definition_id [String] The ID of the role definition.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(scope, role_definition_id, custom_headers:nil)
      get_async(scope, role_definition_id, custom_headers:custom_headers).value!
    end

    #
    # Get role definition by name (GUID).
    #
    # @param scope [String] The scope of the role definition.
    # @param role_definition_id [String] The ID of the role definition.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(scope, role_definition_id, custom_headers:nil)
      fail ArgumentError, 'scope is nil' if scope.nil?
      fail ArgumentError, 'role_definition_id is nil' if role_definition_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{scope}/providers/Microsoft.Authorization/roleDefinitions/{roleDefinitionId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'roleDefinitionId' => role_definition_id},
          skip_encoding_path_params: {'scope' => scope},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinition.mapper()
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
    # Creates or updates a role definition.
    #
    # @param scope [String] The scope of the role definition.
    # @param role_definition_id [String] The ID of the role definition.
    # @param role_definition [RoleDefinition] The values for the role definition.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RoleDefinition] operation results.
    #
    def create_or_update(scope, role_definition_id, role_definition, custom_headers:nil)
      response = create_or_update_async(scope, role_definition_id, role_definition, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a role definition.
    #
    # @param scope [String] The scope of the role definition.
    # @param role_definition_id [String] The ID of the role definition.
    # @param role_definition [RoleDefinition] The values for the role definition.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(scope, role_definition_id, role_definition, custom_headers:nil)
      create_or_update_async(scope, role_definition_id, role_definition, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates a role definition.
    #
    # @param scope [String] The scope of the role definition.
    # @param role_definition_id [String] The ID of the role definition.
    # @param role_definition [RoleDefinition] The values for the role definition.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(scope, role_definition_id, role_definition, custom_headers:nil)
      fail ArgumentError, 'scope is nil' if scope.nil?
      fail ArgumentError, 'role_definition_id is nil' if role_definition_id.nil?
      fail ArgumentError, 'role_definition is nil' if role_definition.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinition.mapper()
      request_content = @client.serialize(request_mapper,  role_definition)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '{scope}/providers/Microsoft.Authorization/roleDefinitions/{roleDefinitionId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'roleDefinitionId' => role_definition_id},
          skip_encoding_path_params: {'scope' => scope},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
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
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinition.mapper()
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
    # Get all role definitions that are applicable at scope and above.
    #
    # @param scope [String] The scope of the role definition.
    # @param filter [String] The filter to apply on the operation. Use
    # atScopeAndBelow filter to search below the given scope as well.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<RoleDefinition>] operation results.
    #
    def list(scope, filter:nil, custom_headers:nil)
      first_page = list_as_lazy(scope, filter:filter, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Get all role definitions that are applicable at scope and above.
    #
    # @param scope [String] The scope of the role definition.
    # @param filter [String] The filter to apply on the operation. Use
    # atScopeAndBelow filter to search below the given scope as well.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(scope, filter:nil, custom_headers:nil)
      list_async(scope, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # Get all role definitions that are applicable at scope and above.
    #
    # @param scope [String] The scope of the role definition.
    # @param filter [String] The filter to apply on the operation. Use
    # atScopeAndBelow filter to search below the given scope as well.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(scope, filter:nil, custom_headers:nil)
      fail ArgumentError, 'scope is nil' if scope.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{scope}/providers/Microsoft.Authorization/roleDefinitions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'scope' => scope},
          query_params: {'$filter' => filter,'api-version' => @client.api_version},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinitionListResult.mapper()
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
    # Gets a role definition by ID.
    #
    # @param role_definition_id [String] The fully qualified role definition ID.
    # Use the format,
    # /subscriptions/{guid}/providers/Microsoft.Authorization/roleDefinitions/{roleDefinitionId}
    # for subscription level role definitions, or
    # /providers/Microsoft.Authorization/roleDefinitions/{roleDefinitionId} for
    # tenant level role definitions.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RoleDefinition] operation results.
    #
    def get_by_id(role_definition_id, custom_headers:nil)
      response = get_by_id_async(role_definition_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a role definition by ID.
    #
    # @param role_definition_id [String] The fully qualified role definition ID.
    # Use the format,
    # /subscriptions/{guid}/providers/Microsoft.Authorization/roleDefinitions/{roleDefinitionId}
    # for subscription level role definitions, or
    # /providers/Microsoft.Authorization/roleDefinitions/{roleDefinitionId} for
    # tenant level role definitions.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_by_id_with_http_info(role_definition_id, custom_headers:nil)
      get_by_id_async(role_definition_id, custom_headers:custom_headers).value!
    end

    #
    # Gets a role definition by ID.
    #
    # @param role_definition_id [String] The fully qualified role definition ID.
    # Use the format,
    # /subscriptions/{guid}/providers/Microsoft.Authorization/roleDefinitions/{roleDefinitionId}
    # for subscription level role definitions, or
    # /providers/Microsoft.Authorization/roleDefinitions/{roleDefinitionId} for
    # tenant level role definitions.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_by_id_async(role_definition_id, custom_headers:nil)
      fail ArgumentError, 'role_definition_id is nil' if role_definition_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{roleDefinitionId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'roleDefinitionId' => role_definition_id},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinition.mapper()
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
    # Get all role definitions that are applicable at scope and above.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RoleDefinitionListResult] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get all role definitions that are applicable at scope and above.
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
    # Get all role definitions that are applicable at scope and above.
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinitionListResult.mapper()
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
    # Get all role definitions that are applicable at scope and above.
    #
    # @param scope [String] The scope of the role definition.
    # @param filter [String] The filter to apply on the operation. Use
    # atScopeAndBelow filter to search below the given scope as well.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RoleDefinitionListResult] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(scope, filter:nil, custom_headers:nil)
      response = list_async(scope, filter:filter, custom_headers:custom_headers).value!
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
