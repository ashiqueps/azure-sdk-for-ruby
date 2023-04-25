# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Migrate::Mgmt::V2018_02_02
  #
  # Move your workloads to Azure.
  #
  class AssessedMachines
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AssessedMachines class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AzureMigrate] reference to the AzureMigrate
    attr_reader :client

    #
    # Get assessed machines for assessment.
    #
    # Get list of machines that assessed as part of the specified assessment.
    # Returns a json array of objects of type 'assessedMachine' as specified in the
    # Models section.
    #
    # Whenever an assessment is created or updated, it goes under computation.
    # During this phase, the 'status' field of Assessment object reports
    # 'Computing'.
    # During the period when the assessment is under computation, the list of
    # assessed machines is empty and no assessed machines are returned by this
    # call.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AssessedMachineResultList] operation results.
    #
    def list_by_assessment(resource_group_name, project_name, group_name, assessment_name, custom_headers:nil)
      response = list_by_assessment_async(resource_group_name, project_name, group_name, assessment_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get assessed machines for assessment.
    #
    # Get list of machines that assessed as part of the specified assessment.
    # Returns a json array of objects of type 'assessedMachine' as specified in the
    # Models section.
    #
    # Whenever an assessment is created or updated, it goes under computation.
    # During this phase, the 'status' field of Assessment object reports
    # 'Computing'.
    # During the period when the assessment is under computation, the list of
    # assessed machines is empty and no assessed machines are returned by this
    # call.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_assessment_with_http_info(resource_group_name, project_name, group_name, assessment_name, custom_headers:nil)
      list_by_assessment_async(resource_group_name, project_name, group_name, assessment_name, custom_headers:custom_headers).value!
    end

    #
    # Get assessed machines for assessment.
    #
    # Get list of machines that assessed as part of the specified assessment.
    # Returns a json array of objects of type 'assessedMachine' as specified in the
    # Models section.
    #
    # Whenever an assessment is created or updated, it goes under computation.
    # During this phase, the 'status' field of Assessment object reports
    # 'Computing'.
    # During the period when the assessment is under computation, the list of
    # assessed machines is empty and no assessed machines are returned by this
    # call.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_assessment_async(resource_group_name, project_name, group_name, assessment_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'project_name is nil' if project_name.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      fail ArgumentError, 'assessment_name is nil' if assessment_name.nil?
      @client.api_version = '2018-02-02'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Accept-Language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName}/groups/{groupName}/assessments/{assessmentName}/assessedMachines'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'projectName' => project_name,'groupName' => group_name,'assessmentName' => assessment_name},
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
            result_mapper = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessedMachineResultList.mapper()
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
    # Get an assessed machine.
    #
    # Get an assessed machine with its size & cost estimate that was evaluated in
    # the specified assessment.
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param assessed_machine_name [String] Unique name of an assessed machine
    # evaluated as part of an assessment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AssessedMachine] operation results.
    #
    def get(resource_group_name, project_name, group_name, assessment_name, assessed_machine_name, custom_headers:nil)
      response = get_async(resource_group_name, project_name, group_name, assessment_name, assessed_machine_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get an assessed machine.
    #
    # Get an assessed machine with its size & cost estimate that was evaluated in
    # the specified assessment.
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param assessed_machine_name [String] Unique name of an assessed machine
    # evaluated as part of an assessment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, project_name, group_name, assessment_name, assessed_machine_name, custom_headers:nil)
      get_async(resource_group_name, project_name, group_name, assessment_name, assessed_machine_name, custom_headers:custom_headers).value!
    end

    #
    # Get an assessed machine.
    #
    # Get an assessed machine with its size & cost estimate that was evaluated in
    # the specified assessment.
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param assessed_machine_name [String] Unique name of an assessed machine
    # evaluated as part of an assessment.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, project_name, group_name, assessment_name, assessed_machine_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'project_name is nil' if project_name.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      fail ArgumentError, 'assessment_name is nil' if assessment_name.nil?
      fail ArgumentError, 'assessed_machine_name is nil' if assessed_machine_name.nil?
      @client.api_version = '2018-02-02'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Accept-Language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName}/groups/{groupName}/assessments/{assessmentName}/assessedMachines/{assessedMachineName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'projectName' => project_name,'groupName' => group_name,'assessmentName' => assessment_name,'assessedMachineName' => assessed_machine_name},
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
            result_mapper = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessedMachine.mapper()
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
