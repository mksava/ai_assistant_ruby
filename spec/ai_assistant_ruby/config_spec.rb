RSpec.describe AiAssistantRuby::Config do
  describe ".configure" do
    context "正常なキーを全て設定したとき" do
      it "設定値が設定され、Config経由で取得できること" do
        AiAssistantRuby::Config.configure do
          config.google_api_key = "test-google-api-key"
          config.slack_client_id = "test-slack-client-id"
        end

        expect(AiAssistantRuby::Config.google_api_key).to eq("test-google-api-key")
        expect(AiAssistantRuby::Config.slack_client_id).to eq("test-slack-client-id")
      end
    end

    context "設定値が未設定のとき" do
      it "TODO"
    end

    context "不正なキーを設定したとき" do
      it "エラーが発生すること" do
        expect {
          AiAssistantRuby::Config.configure do
            config.invalid_key = "test-invalid-key"
          end
        }.to raise_error(NoMethodError)
      end
    end
  end
end
