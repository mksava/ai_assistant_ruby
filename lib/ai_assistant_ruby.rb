# frozen_string_literal: true

# ai_assistant_rubyディレクトリ配下の全ての.rbファイルを読み込む
Dir.glob(File.join(__dir__, "ai_assistant_ruby/**/*.rb")).each do |file|
  require_relative file
end

module AiAssistantRuby
  class Error < StandardError; end
  # Your code goes here...
end
