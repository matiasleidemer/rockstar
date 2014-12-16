module Rockstar
  module Pagination
    attr_accessor :page, :per_page

    def pagination_params(params={})
      @page = params.fetch :page, 1
      @per_page = params.fetch :per_page, 50

      { page: @page, limit: @per_page }
    end
  end
end
