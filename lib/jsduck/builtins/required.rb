require "jsduck/builtins/tag"

module JsDuck::Builtins
  # There is no @required tag.
  # Instead the :required attribute is detected after @cfg:
  #
  #    @cfg {Type} someName (required)
  #
  # This class is only used for rendering the required attribute in
  # HTML documentation, not for detecting it.  The detection is done
  # with custom logic in @cfg and DocAst classes.
  class Required < Tag
    def initialize
      @key = :required
      @signature = {:long => "required", :short => "REQ"}
    end

    def process_doc(docs)
      true
    end
  end
end
