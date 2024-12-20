module AiAssistantRuby
  module Geter
    RESULT = Data.define(:ok, :type, :json, :error, :error_message)
    class Base
      private

      def build_result(result_ok, type, json, error, error_message)
        RESULT.new(
          ok: result_ok,
          type: type,
          json: json,
          error: error,
          error_message: error_message,
        )
      end
    end
  end
end
