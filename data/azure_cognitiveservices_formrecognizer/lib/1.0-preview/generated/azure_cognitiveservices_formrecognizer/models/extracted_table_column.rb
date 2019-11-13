# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::FormRecognizer::V1_0_preview
  module Models
    #
    # Extraction information of a column in
    # a table.
    #
    class ExtractedTableColumn

      include MsRestAzure

      # @return [Array<ExtractedToken>] List of extracted tokens for the column
      # header.
      attr_accessor :header

      # @return [Array<Array<ExtractedToken>>] Extracted text for each cell of
      # a column. Each cell
      # in the column can have a list of one or more tokens.
      attr_accessor :entries


      #
      # Mapper for ExtractedTableColumn class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExtractedTableColumn',
          type: {
            name: 'Composite',
            class_name: 'ExtractedTableColumn',
            model_properties: {
              header: {
                client_side_validation: true,
                required: false,
                serialized_name: 'header',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExtractedTokenElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExtractedToken'
                      }
                  }
                }
              },
              entries: {
                client_side_validation: true,
                required: false,
                serialized_name: 'entries',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'ExtractedTokenElementType',
                            type: {
                              name: 'Composite',
                              class_name: 'ExtractedToken'
                            }
                        }
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end