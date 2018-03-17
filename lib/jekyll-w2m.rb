require 'jekyll'
require 'liquid'

require 'word-to-markdown'

module Jekyll

  module W2M

    class Tag < Liquid::Tag

      def initialize(tag_name, txt, tokens)
        @context = txt
      end

      def render(context)
        Jekyll::W2M.parse(@context)
      end

    end

    class << self

      def parse(file_path)
        WordToMarkown.new(file_path)
      end

    end

  end

end

Liquid::Template.register_tag('w2m', Jekyll::W2M::Tag)
