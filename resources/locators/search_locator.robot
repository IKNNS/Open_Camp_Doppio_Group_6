***Variables***
${search_locator.txt_search}              id=ikea-search-input
${search_locator.btn_search}              css=.search-box-search__divider+button 
${search_locator.btn_color_filter}        css=[aria-controls="SEC_COLOR"]
${search_locator.btn_color_option}        css=[name="***color***"]
${search_locator.lbl_product_description}      css=.plp-price-module__name-decorator:has-text("***product_name***")~:has-text("***product_description***") >> nth = 0








# ${search_locator.lbl_product_description}   css=[data-product-name="***product_name***"] .plp-text:has-text("***product_description***")
# [aria-controls="@#COLOR@#"][aria-controls="COLOR"]
# 2-seat sofa,Alhamn dark brown

# [data-product-name="@#product_name@#"] span:has-text("@#product_desc@#")


# [data-product-name="STOCKHOLM 2025"] .plp-text:has-text("2-seat sofa, Alhamn dark brown")


# .plp-price-module__name-decorator:has-text("STOCKHOLM 2025")~:has-text("2-seat sofa, Alhamn dark brown") >> nth = 0