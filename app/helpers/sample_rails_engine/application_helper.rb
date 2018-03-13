module SampleRailsEngine
  module ApplicationHelper
    def title(content = nil, &block)
      content = capture(&block) if block_given?
      content_for :title, content
      content_tag :h1, content
    end

    def add_two_numbers(x, y)
      x + y
    end
  end
end
