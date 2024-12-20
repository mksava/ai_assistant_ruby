module AiAssistantRuby
  class Config
    VALID_KEYS = %i[google_api_key slack_client_id].freeze
    # 設定値を保持するクラス変数
    @settings = {}

    class << self
      # 設定を変更するDSL
      # @example
      #   AiAssistantRuby::Config.configure do
      #     config.google_api_key = "your_google_api_key"
      #   end
      def configure(&block)
        instance_eval(&block) if block_given?
      end

      # configメソッドでselfを返す
      def config
        self
      end

      # 各キーに対するセッターとゲッターを定義
      VALID_KEYS.each do |key|
        define_method(key) do
          @settings[key]
        end

        define_method("#{key}=") do |value|
          @settings[key] = value
        end
      end
    end
  end
end
