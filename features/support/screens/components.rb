class Navigator 
    def tap_hamburger
        hamburger = "//android.widget.ImageButton[@content-desc='Open navigation drawer']"
        find_element(xpath:hamburger).click
    end  
        
    def list
        return find_element(id:"io.qaninja.android.twp:id/rvNavigation")
    end

    def tap_by_text(target)
        find_element(xpath:"//*[@text='#{target}']").click
    end
end