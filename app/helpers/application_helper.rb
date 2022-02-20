module ApplicationHelper
    def full_title(page_title = '')
        base_title = "我が家の在庫管理システム"
        if page_title.empty?
            base_title
        else
            "#{ page_title } | #{ base_title }"
        end
    end
end
